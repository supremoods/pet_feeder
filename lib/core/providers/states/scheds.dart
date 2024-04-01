import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_feeder/core/models/schedules/schedules.dart';
import 'package:pet_feeder/core/providers/schedules/schedules.provider.dart';

final schedules = StateProvider<List<SchedulesModel>>((ref) => []);

final selectedSchedule = StateProvider<SchedulesModel?>((ref)=> null);

void refreshSchedules(BuildContext context) async{
  final ref = ProviderScope.containerOf(context);
  try{
    final List<SchedulesModel> response = await ref.read(schedulesRepositoriesProvider).getSchedules();
    ref.read(schedules.notifier).state = response;
  }catch(error){
    debugPrint(error.toString());
    rethrow;
  }
}

