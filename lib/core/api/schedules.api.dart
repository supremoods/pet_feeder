import 'package:flutter/material.dart';
import 'package:pet_feeder/core/utils/dio_client.dart';

class SchedulesApi{
  final route = "/schedules/api/";
  final DioClient dioClient;

  SchedulesApi(this.dioClient);
  
  Future createSchedule(payload) async {
    try{
      final response = await petFeederUrl.post("$route/schedules", data: payload);
      return response;
    }catch(error){
      debugPrint(error.toString());
      rethrow;
    }
  }

  Future getSchedules() async {
    try{
      final response = await petFeederUrl.get("$route/schedules");
      return response.data;
    }catch(error){
      debugPrint(error.toString());
      rethrow;
    }
  }

  Future getSchedulesById(String id) async {
    try{
      final response = await petFeederUrl.get("$route/schedules/$id");
      return response;
    }catch(error){
      debugPrint(error.toString());
      rethrow;
    }
  }


  Future updateSchedule(String id, payload) async {
    try{
      final response = await petFeederUrl.put("$route/schedules/$id", data: payload);
      return response;
    }catch(error){
      debugPrint(error.toString());
      rethrow;
    }
  }

  Future deleteSchedule(String id) async {
    try{
      final response = await petFeederUrl.delete("$route/schedules/$id");
      return response;
    }catch(error){
      debugPrint(error.toString());
      rethrow;
    }
  }

}