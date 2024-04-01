import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_feeder/core/api/deviceStatus.dart';
import 'package:pet_feeder/core/providers/shared_providers.dart';
import 'package:pet_feeder/core/repositories/device_status.dart';

final deviceStatusApiProvider = Provider<DeviceStatusApi>((ref){
  return DeviceStatusApi(ref.read(dioClientProvider));
});

final deviceStatusRepository = Provider<DeviceStatusRepository>((ref){
  return DeviceStatusRepository(ref.read(deviceStatusApiProvider));
});