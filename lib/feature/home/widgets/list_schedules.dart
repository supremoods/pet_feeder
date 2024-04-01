// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_feeder/constant/enums.dart';
import 'package:pet_feeder/constant/theme.dart';
import 'package:pet_feeder/core/models/schedules/schedules.dart';
import 'package:pet_feeder/core/providers/schedules/schedules.provider.dart';
import 'package:pet_feeder/core/providers/states/scheds.dart';
import 'package:pet_feeder/feature/home/widgets/schedule.dart';
import 'package:pet_feeder/feature/home/widgets/set_alarm_bottom_sheet/bottom_sheet.dart';

class ListSchedules extends ConsumerStatefulWidget {
  const ListSchedules({super.key});

  @override
  ConsumerState<ListSchedules> createState() => _ListSchedulesState();
}

class _ListSchedulesState extends ConsumerState<ListSchedules> {

  @override
  void initState() {
    super.initState();
     WidgetsBinding.instance.addPostFrameCallback((_) {
      load();
     });
  }

  void load() async{
    await fetchSchedules();
  }

  Future fetchSchedules() async{
    try{
      final List<SchedulesModel> _scheds =  await ref.watch(schedulesRepositoriesProvider).getSchedules();
      ref.watch(schedules.notifier).state = _scheds;
    }catch(error){
      debugPrint(error.toString());
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    final _schedules = ref.watch(schedules);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_schedules.isEmpty)
           Container(
            // Display a message when the list is empty
            alignment: Alignment.center,
            height: MediaQuery.sizeOf(context).height * .6,
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children : [
                Icon(
                  Icons.content_paste,
                  size: 140,
                  color: secondaryColor.withOpacity(.6),
                ),
                const Text(
                  'No schedules available',
                  style: TextStyle(
                    color: secondaryColor
                  )
                )
              ]
            ),
          )
        else
          ..._schedules.map((schedule) => 
            GestureDetector(
              onTap: (){
                ref.watch(selectedSchedule.notifier).state = schedule;
                SetAlarmBottomSheet(context, 'Edit Alarm', ActionType.edit);
              },
              onLongPress: (){
                ref.watch(selectedSchedule.notifier).state = schedule;
                SetAlarmBottomSheet(context, 'Edit Alarm', ActionType.edit);
              },
              child: Container(
                color: Colors.black,
                child: Schedule(scheduleItem: schedule)
              ),
            )
          ),
      ],
    );
          
  }
}
