import 'package:flutter/material.dart';
import 'package:pet_feeder/constant/enums.dart';
import 'package:pet_feeder/feature/home/widgets/set_alarm_bottom_sheet/set_alarm.dart';

// ignore: non_constant_identifier_names
SetAlarmBottomSheet(BuildContext context, String headerTitle, ActionType type){
  showModalBottomSheet(
    context: context, 
    isScrollControlled: true,
    clipBehavior: Clip.antiAlias,
    
    builder: (BuildContext context){
      return FractionallySizedBox(
        heightFactor: 0.9,
        child: SetAlarm(
          title: headerTitle,
          action: type,
        ),
    );
  });
}



