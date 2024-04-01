import 'package:flutter/material.dart';
import 'package:pet_feeder/constant/theme.dart';

class ConfigItem extends StatelessWidget {
  final VoidCallback? onTap;
  final String label;
  final List<Widget> trailing;

  const ConfigItem({this.onTap, required this.trailing, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Row(
        children: [
          Expanded(child: 
            Text(
              label,
              style:const TextStyle(
                color: secondaryColor,
                fontSize: 16,
              ),
            )
          ),
          Row(
            children:trailing
            
          )
        ],
      )
    );
  }
}