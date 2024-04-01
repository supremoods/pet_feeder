// ignore_for_file: no_leading_underscores_for_local_identifiers, depend_on_referenced_packages


import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Store {
  const Store._();
  static const secureStorage = FlutterSecureStorage();

  //Token
  static Future<void> setTime(String time) async {
    await secureStorage.write(key: 'time', value: time);
  }



static Future<String> getTime() async {
  try{
    String? time = await secureStorage.read(key: 'time');
    return time ?? ''; // Return empty string if time is null
  }catch(error){
    print(error);
    return '';
  }

}

}
