import 'package:flutter/material.dart';

const primaryColor = Color.fromARGB(255, 255, 36, 156);
const dangerColor = Colors.red;
const secondaryColor = Colors.white;
const successColor = Color(0xff03fc5e);
const darkGrey = Color(0xff1e1f1e);

final MaterialStateProperty<Color?> trackColor = MaterialStateProperty.resolveWith<Color?>(
  (Set<MaterialState> states) {
    if (states.contains(MaterialState.selected)) {
      return successColor;
    }
    return null;
  },
);

final MaterialStateProperty<Color?> overlayColor = MaterialStateProperty.resolveWith<Color?>(
  (Set<MaterialState> states) {
    if (states.contains(MaterialState.selected)) {
      return successColor.withOpacity(0.54);
    }
    if (states.contains(MaterialState.disabled)) {
      return Colors.transparent;
    }
    return null;
  },
);
