import 'package:flutter/material.dart';
import 'package:pet_feeder/core/api/schedules.api.dart';
import 'package:pet_feeder/core/models/schedules/schedules.dart';

class SchedulesRepository{
  final SchedulesApi schedulesApi;

  SchedulesRepository(this.schedulesApi);

  Future<List<SchedulesModel>> getSchedules() async{
    try{
      final response = await schedulesApi.getSchedules();
      final items = (response as List).map((e) {
        return SchedulesModel.fromJson(e);
      }).toList();
      return items;
    }catch(error){
      debugPrint(error.toString());
      rethrow;
    } 
  }

  Future<SchedulesModel> getScheduleById(String id) async{
    try{
      final response = await schedulesApi.getSchedulesById(id);
      final item = SchedulesModel.fromJson(response);
      return item;
    }catch(error){
      debugPrint(error.toString());
      rethrow;
    }
  }

}