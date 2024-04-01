import 'package:flutter/material.dart';
import 'package:pet_feeder/core/utils/dio_client.dart';

class DeviceStatusApi{
  final route = "/deviceStatus/api/";
  final DioClient dioClient;

  DeviceStatusApi(this.dioClient);
  
  Future getDeviceStatus() async {
    try{
      final response = await petFeederUrl.get("$route/deviceStatus/660a35dc93e5a63a027f964c");
      return response.data;
    }catch(error){
      debugPrint(error.toString());
      rethrow;
    }
  }

}