import 'package:flutter/material.dart';

class Mixins {
  static  formatTime( time) {
    try {
      final dateTimeInManila = convertToManilaTime(time);
      final formattedTime = _formatTime(dateTimeInManila);
      final dayPeriod = _getDayPeriod(dateTimeInManila);

      return {"formatTime": formattedTime, "day": dayPeriod};
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  static DateTime convertToManilaTime(DateTime time) {
    // UTC offset for Asia/Manila (in hours)
    const manilaOffsetHours = 8;
    // Converting time to UTC
    final utcTime = time.toUtc();
    // Adding Manila timezone offset
    final manilaTime = utcTime.add(const Duration(hours: manilaOffsetHours));
    return manilaTime;
  }

  static String _formatTime(DateTime time) {
    int hour = time.hour;
    // Convert hour to 12-hour format
    if (hour > 12) {
      hour -= 12;
    }
    final hourStr = hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');
    return '$hourStr:$minute';
  }

  static String _getDayPeriod(DateTime time) {
    return time.hour < 12 ? 'AM' : 'PM';
  }
}
