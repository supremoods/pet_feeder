import 'package:flutter/material.dart';
import 'package:pet_feeder/core/api/configuration.dart';
import 'package:pet_feeder/core/models/configuration/configuration.dart';

class ConfigurationRepository{
  final ConfigurationApi configurationApi;

  ConfigurationRepository(this.configurationApi);

 
  Future<ConfigurationModel> getConfiguration() async{
    try{
      final response = await configurationApi.getConfiguration();
      final configuration = ConfigurationModel.fromJson(response[0]);
      return configuration;
    }catch(error){
      debugPrint(error.toString());
      rethrow;
    }
  }

}