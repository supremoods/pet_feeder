import 'package:flutter/material.dart';
import 'package:pet_feeder/core/api/deviceStatus.dart';
import 'package:pet_feeder/core/models/deviceStatus/device_status.dart';

class DeviceStatusRepository{
  final DeviceStatusApi deviceStatusApi;

  DeviceStatusRepository(this.deviceStatusApi);
 
  Future<DeviceStatusModel> getDeviceStatus() async{
    try{
      final response = await deviceStatusApi.getDeviceStatus();
      final configuration = DeviceStatusModel.fromJson(response);
      return configuration;
    }catch(error){
      debugPrint(error.toString());
      rethrow;
    }
  }

}