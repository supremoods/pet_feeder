import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:pet_feeder/constant/theme.dart';
import 'package:pet_feeder/layouts/layout.dart';

void main() {
  initializeDateFormatting('en_PH'); 
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
    
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Feeder App',
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: primaryColor),
          color: primaryColor
        ), 
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor).copyWith(background: Colors.black)
      ),

      home: const Layout(),
      debugShowCheckedModeBanner: false,
    );
  }
}

