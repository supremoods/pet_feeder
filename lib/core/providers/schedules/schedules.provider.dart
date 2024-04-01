import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_feeder/core/api/schedules.api.dart';
import 'package:pet_feeder/core/providers/shared_providers.dart';
import 'package:pet_feeder/core/repositories/schedules.repositories.dart';

final schedulesApiProvider = Provider<SchedulesApi>((ref){
  return SchedulesApi(ref.read(dioClientProvider));
});

final schedulesRepositoriesProvider = Provider<SchedulesRepository>((ref){
  return SchedulesRepository(ref.read(schedulesApiProvider));
});