import 'package:flutter/material.dart';
import 'package:pet_feeder/core/utils/dio_client.dart';

class ConfigurationApi{
  final route = "/configurations/api/";
  final DioClient dioClient;

  ConfigurationApi(this.dioClient);
  
  Future getConfiguration() async {
    try{
      final response = await petFeederUrl.get("$route/configuration");
      return response.data;
    }catch(error){
      debugPrint(error.toString());
      rethrow;
    }
  }

  Future updateConfiguration(payload) async{
    try{
      final response = await petFeederUrl.put("$route/configuration/66099796beefec7fc3a6dde2", data: payload);
      return response;
    }catch(error){
      debugPrint(error.toString());
      rethrow;
    }
  }

}