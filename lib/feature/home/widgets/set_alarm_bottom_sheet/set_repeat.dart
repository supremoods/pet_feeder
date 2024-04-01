import 'package:flutter/material.dart';
import 'package:pet_feeder/constant/theme.dart';
import 'package:pet_feeder/feature/home/widgets/set_alarm_bottom_sheet/config_item.dart';
import 'package:pet_feeder/layouts/app_bar.dart';

class SetRepeat extends StatefulWidget {
  final Function(List<Map>) modes;
  final List<Map> repeatModes;
  const SetRepeat({required this.repeatModes, required this.modes, super.key});

  @override
  State<SetRepeat> createState() => _SetRepeatState();
}

class _SetRepeatState extends State<SetRepeat> {

  List<Map> repeatModes = [];

  @override
  void initState(){
    super.initState();
    setState(() {
      repeatModes = widget.repeatModes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        headerTitle: 'Repeat', 
        show: true, 
        leadingChild: Container(
          alignment: Alignment.center,
          child: const Row(
            children: [
              Icon(
                Icons.chevron_left,
                color: primaryColor
              ),
              Expanded(
              child: Text(
                'Back',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 16
                ),
              )),
            ]
          )
        ), 
        leading: () => Navigator.pop(context), 
        actionChild:  Container(), 
        color: darkGrey,
      ),
      body: Container (
        color: darkGrey,
        child: Column(
          children: [
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
                children:[
                  for (var i = 0; i < repeatModes.length; i++)
                    Column(
                      children:[ 
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: ConfigItem(
                            onTap: (){
                              bool active = repeatModes[i]['isActive']; 
                              setState(() {
                                repeatModes[i]['isActive'] = active ? false: true; 
                              });
                              widget.modes(repeatModes);
                            },
                            trailing: [
                              repeatModes[i]['isActive'] ? const Icon(
                                Icons.check,
                                color: primaryColor
                              ) : const SizedBox(),
                            ],
                            label: repeatModes[i]['mode']
                          )
                        ),
                        !(i < repeatModes.length -1) ? const SizedBox():Divider(
                          thickness: 1,
                          color: secondaryColor.withOpacity(.1),
                        ),
                      ]
                    )
                ]
              )
            )
          ]
        )
      )
    );
    
  }
}