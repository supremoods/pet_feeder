import 'package:flutter_riverpod/flutter_riverpod.dart';

final isEdit = StateProvider<bool>((ref)=>false);
final refresh = StateProvider<bool>((ref)=>false);