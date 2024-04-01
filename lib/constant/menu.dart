import 'package:flutter/material.dart';
import 'package:pet_feeder/feature/device_status/device_status.dart';
import 'package:pet_feeder/feature/home/home.dart';

List<BottomNavigationBarItem> menuItems() {
  return [
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.access_alarms,
        size: 24,
      ),
      label:'Alarms'
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.pets,
        size: 24,
      ),
      label:'Device Status'
    )
  ];
}

List<Map> menuPages = [
  {
    'page': const Home(),
    'label': 'Alarms'
  },
  {
    'page': const DeviceStatus(),
    'label': 'Device Status'
  }
];