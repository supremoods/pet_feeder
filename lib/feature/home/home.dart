import 'package:flutter/material.dart';
import 'package:pet_feeder/constant/theme.dart';
import 'package:pet_feeder/feature/home/widgets/list_schedules.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Alarms',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: secondaryColor
          ),  
        ),
        ListSchedules()    
      ],
    );
  }
}