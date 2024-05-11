// ignore_for_file: use_build_context_synchronously, no_leading_underscores_for_local_identifiers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_feeder/constant/enums.dart';
import 'package:pet_feeder/constant/global_widgets.dart';
import 'package:pet_feeder/constant/theme.dart';
import 'package:pet_feeder/core/providers/schedules/schedules.provider.dart';
import 'package:pet_feeder/core/providers/states/scheds.dart';
import 'package:pet_feeder/feature/home/widgets/set_alarm_bottom_sheet/config_item.dart';
import 'package:pet_feeder/feature/home/widgets/set_alarm_bottom_sheet/set_repeat.dart';
import 'package:pet_feeder/layouts/app_bar.dart';


class SetAlarm extends ConsumerStatefulWidget {
  final String title;
  final ActionType action; 
  const SetAlarm({ required this.title, required this.action, super.key});

  @override
  ConsumerState<SetAlarm> createState() => _SetAlarmState();
}

class _SetAlarmState extends ConsumerState<SetAlarm> {


  TextEditingController labelController = TextEditingController();
  DateTime timePicker = DateTime.now();

  List<Map> repeatModes = [
    {
      "mode": "Every Sunday",
      "code": "Sun",
      "isActive": false
    },
    {
      "mode" :"Every Monday",
      "code": "Mon",
      "isActive": false
    },
    {
      "mode": "Every Tuesday",
      "code": "Tue",
      "isActive": false
    },
    {
      "mode":"Every Wednesday",
      "code": "Wed",
      "isActive": false
    },
    {
      "mode":"Every Thursday",
      "code": "Thu",
      "isActive": false
    },
    {
      "mode":"Every Friday",
      "code": "Fri",
      "isActive": false
    },
    {
      "mode":"Every Saturday",
      "code": "Sat",
      "isActive": false
    }
  ];

  @override
  void initState() {
    super.initState();
     WidgetsBinding.instance.addPostFrameCallback((_) {
      setRepeatModes();
     });
   
  }


  void setRepeatModes(){
    try{
      if(widget.action == ActionType.edit){
        final selectedScheduleState = ref.watch(selectedSchedule);
        final _repeatModes = selectedScheduleState?.repeatModes;

        debugPrint(_repeatModes.toString());

        setState(() {
          if (_repeatModes != null) {
            for (int index = 0; index < _repeatModes.length; index++) {
              repeatModes[index]['isActive'] = _repeatModes[index].isActive ?? false;
            }
          }
          labelController.value = TextEditingValue(text: ref.watch(selectedSchedule)!.label.toString());
        });
      }
    }catch(error){
      debugPrint(error.toString());
    }
  }



  Future submit(BuildContext context) async{
    try{
      debugPrint(timePicker.toString());
      final payload = {
        "label": labelController.value.text,
        "isActive": true,
        "repeatModes": repeatModes,
        "time": timePicker.toString()
      };
      loading(context);
       if(widget.action == ActionType.edit){
        final response = await ref.watch(schedulesApiProvider).updateSchedule(ref.watch(selectedSchedule)!.id.toString(),payload);
        debugPrint(response.toString());
       }else{
        final response = await ref.watch(schedulesApiProvider).createSchedule(payload);
        debugPrint(response.toString());
       }
      refreshSchedules(context);
    }catch(error){
      debugPrint(error.toString());
    } finally{
      Navigator.pop(context);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        headerTitle: widget.title, 
        show: true, 
        leadingChild: Container(
          alignment: Alignment.center,
          child: const Text(
            'Cancel',
            style: TextStyle(
              color: primaryColor,
              fontSize: 16
            ),
          ),
        ), 
        leading: () => Navigator.pop(context), 
        actionChild:  Container(
          alignment: Alignment.center,
          child: const Text(
            'Save',
            style: TextStyle(
              color: primaryColor,
              fontSize: 16
            ),
          ),
        ), 
        action: () async {
            await submit(context);
        },
        color: darkGrey,
      ),
      body:  Container(
        color: darkGrey,
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: CupertinoTheme(
                data: const CupertinoThemeData(
                  brightness: Brightness.dark
                ),
                child: CupertinoDatePicker(
                  initialDateTime: widget.action == ActionType.edit ? ref.watch(selectedSchedule)!.time!.toLocal() : DateTime.now(),
                  onDateTimeChanged: (DateTime value) {
                    debugPrint(value.toString());
                    setState(() {
                      timePicker = value;
                    });
                  },
                  mode: CupertinoDatePickerMode.time,
                )
              )
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius:const BorderRadius.all(
                  Radius.circular(10)
                ),
                color: secondaryColor.withOpacity(.1),
                
              ),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child:  Column(
                children: [
                  ConfigItem(
                    onTap: (){
                      defaultBottomSheet(context, SetRepeat(
                        repeatModes: repeatModes,
                        modes: (value){
                          setState(() {
                            repeatModes = value;
                          });
                        },
                      ));
                    },
                    trailing: [
                      Text(
                        repeatModes.every((mode) => mode['isActive'] == false) ? 'Never' : repeatModes.where((e) => e['isActive']).map((e) => e['code']).join(', '),
                        style: TextStyle(
                          color: secondaryColor.withOpacity(.4),
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: secondaryColor.withOpacity(.4)
                      )
                    ],
                    label:'Repeat'
                  ),
                  Divider(
                    thickness: 1,
                    color: secondaryColor.withOpacity(.1),
                  ),
                  ConfigItem(
                    onTap: ()=>{},
                    trailing: [
                      SizedBox(
                        width: 200,
                        child: CupertinoTextField(
                          onChanged: (value){
                            debugPrint(value.toString());
                          },
                          controller: labelController,
                          clearButtonMode: OverlayVisibilityMode.editing,
                          style: TextStyle(
                            color: secondaryColor.withOpacity(.4)
                          ),
                          cursorColor: primaryColor,
                          textAlign: TextAlign.end,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                        )
                      )
                    ],
                    label:'Label'
                  )
                ],
              ),
            )
         ],
        ),
      ),
    );
  }
}