import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_feeder/core/utils/dio_client.dart';

// Provider for Dio instance
final dioInstanceProvider = Provider<Dio>((ref) {
  return Dio();
});

final dioClientProvider = Provider<DioClient>((ref) {
  final dio = ref.watch(dioInstanceProvider);
  return DioClient(dio);
});

// Provider for Dio instance configured for POST requests
final dioPostInstanceProvider = Provider<Dio>((ref) {
  final dio = ref.watch(dioInstanceProvider);
  dio.options.method = 'POST';
  return dio;
});

final dioPostClientProvider = Provider<DioClient>((ref) {
  final dio = ref.watch(dioPostInstanceProvider);
  return DioClient(dio);
});
