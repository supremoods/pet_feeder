// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_feeder/constant/global_widgets.dart';
import 'package:pet_feeder/constant/theme.dart';
import 'package:pet_feeder/core/models/schedules/schedules.dart';
import 'package:pet_feeder/core/providers/schedules/schedules.provider.dart';
import 'package:pet_feeder/core/providers/states/actions.dart';
import 'package:pet_feeder/core/providers/states/scheds.dart';
import 'package:pet_feeder/core/utils/globals.dart';
import 'package:timezone/data/latest.dart' as tz;

class Schedule extends ConsumerStatefulWidget {
  final SchedulesModel scheduleItem;
  const Schedule({required this.scheduleItem, super.key});

  @override
  ConsumerState<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends ConsumerState<Schedule> {
  bool isEnable = false;
  bool showDelete = false;
  
  @override
  void initState() {
    super.initState();
    tz.initializeTimeZones();
    setState(() {
      isEnable = widget.scheduleItem.isActive ?? false;
    });
  }


  void updateActive(value, BuildContext context) async{
    try{
      setState(() {
        isEnable = value;
      });
      loading(context);
      final response  = await ref.watch(schedulesApiProvider).updateSchedule(widget.scheduleItem.id.toString(), {"isActive": isEnable});
      debugPrint(response.toString());
      refreshSchedules(context);
    }catch(e){
      debugPrint(e.toString());
      rethrow;
    }finally{
       Navigator.pop(context);
    }
  }

  void deleteSchedule(BuildContext context) async {
    try{
      loading(context);
      final response = await ref.watch(schedulesApiProvider).deleteSchedule(widget.scheduleItem.id.toString());
      debugPrint(response.toString());
      refreshSchedules(context);
      setState(() {
        showDelete = false;
      });
    }catch(error){
      debugPrint(error.toString());
      rethrow;
    }finally{
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
             AnimatedSwitcher(
                duration: const Duration(milliseconds: 100),
                transitionBuilder: (child, animation) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(-1, 0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  );
                },
                child: ref.watch(isEdit) && !showDelete
                  ? GestureDetector(
                      onTap: (){
                        setState(() {
                          showDelete = true;                            
                        });
                      },
                      child: 
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
                        color: Colors.transparent,
                        child: Container(
                          key: const ValueKey('remove_icon'),
                          decoration: BoxDecoration(
                            color: dangerColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        )
                      )
                    )
                  : const SizedBox()
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          Mixins.formatTime(widget.scheduleItem.time)['formatTime'],
                          style: const TextStyle(
                            fontSize: 60,
                            color: secondaryColor,
                            height: 0,
                            fontWeight: FontWeight.w200
                          ),
                        ),
                        Text(
                          Mixins.formatTime(widget.scheduleItem.time)['day'],
                          style: const TextStyle(
                            fontSize: 32,
                            color: secondaryColor,
                            height: 1.5,
                            fontWeight: FontWeight.w300

                          ),
                        ),
                      ],
                    ),
                    Text(
                      widget.scheduleItem.label.toString(),
                      style: const TextStyle(
                            fontSize: 16,
                            color: secondaryColor,
                            height: 1.5,

                          ),
                    )
                  ],
                ),
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 100),
                transitionBuilder: (child, animation) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(1, 0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  );
                },
                child: ref.watch(isEdit) ?
                Row(
                  children : [
                    GestureDetector(
                      onTap: () => {
                        setState(() {
                          showDelete = false;
                        })
                      },
                      child: Container(
                        color: Colors.transparent,
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: const Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                          size: 24,
                        )
                      )
                    ),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 100),
                      transitionBuilder: (child, animation) {
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(1, 0),
                            end: Offset.zero,
                          ).animate(animation),
                          child: child,
                        );
                      },
                      child: showDelete ? 
                        GestureDetector(
                          onTap: () {
                            deleteSchedule(context);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                            color: dangerColor,
                            child: const Text(
                              'Delete',
                              style: TextStyle(
                                color: secondaryColor,
                                fontSize: 14
                              ),
                            ),
                          )
                        ): const SizedBox()
                     )
                  ]
                )
                : Switch(
                    value: isEnable,
                    overlayColor:  overlayColor,
                    trackColor: trackColor,
                    inactiveThumbColor: secondaryColor,
                    inactiveTrackColor: darkGrey,
                    thumbColor: const MaterialStatePropertyAll<Color>(secondaryColor),
                    onChanged:  (bool value) {
                        updateActive(value, context);
                
                    },
                )  
              )
            ],
          ),
        ),
        Divider(
          thickness: 1,
          color: secondaryColor.withOpacity(.1),
        )
      ]
    );
  }
}