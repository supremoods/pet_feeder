import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_feeder/core/api/configuration.dart';
import 'package:pet_feeder/core/providers/shared_providers.dart';
import 'package:pet_feeder/core/repositories/configuration.dart';

final configurationApiProvider = Provider<ConfigurationApi>((ref){
  return ConfigurationApi(ref.read(dioClientProvider));
});

final configurationRepositoriesProvider = Provider<ConfigurationRepository>((ref){
  return ConfigurationRepository(ref.read(configurationApiProvider));
});