// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_feeder/constant/theme.dart';
import 'package:pet_feeder/core/models/configuration/configuration.dart';
import 'package:pet_feeder/core/models/deviceStatus/device_status.dart';
import 'package:pet_feeder/core/providers/configuration/configuration.dart';
import 'package:pet_feeder/core/providers/device_status/device_status.dart';
import 'package:pet_feeder/core/utils/store.dart';

class DeviceStatus extends ConsumerStatefulWidget {
  const DeviceStatus({super.key});

  @override
  ConsumerState<DeviceStatus> createState() => _DeviceStatusState();
}

class _DeviceStatusState extends ConsumerState<DeviceStatus> {
  double duration = 2.0;
  bool isActive = true;
  ConfigurationModel configuration = const ConfigurationModel( duration: 0);

  @override
  void initState() {
    super.initState();
     WidgetsBinding.instance.addPostFrameCallback((_) {
      load();
     });
  }

  void load() async {
    try{
      configuration = await ref.watch(configurationRepositoriesProvider).getConfiguration();
      final DeviceStatusModel deviceStatus = await ref.watch(deviceStatusRepository).getDeviceStatus();
      final String time  = await Store.getTime();
      print(time);
      if(deviceStatus.time.toString() != time){
        setState(() {
          isActive = true;
        });
        await Store.setTime(deviceStatus.time.toString());
      }else{
        setState(() {
          isActive = false;
        });
      }

      setState(() {
        duration = double.parse(configuration.duration.toString());
      });
    }catch(error){
      debugPrint("ERROR  >> ${error.toString()}");
    }
  }

  void updateDuration() async{
    try{
      await ref.watch(configurationApiProvider).updateConfiguration({"duration":duration.toInt()});
    }catch(error){
      debugPrint(error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.sizeOf(context).height * .7,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: ()=> load(),
            child: Column(
              children: [
                Icon(
                  Icons.pets,
                  size: 140,
                  color: isActive ? successColor : dangerColor,
                ),
                Text(
                  isActive ? 'The device is connected to the internet' : 'The device is not connected to the internet',
                  style: const TextStyle(
                    color: secondaryColor
                  )
                ),
              ],
            ),
          ),
          const SizedBox(height: 100),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Set dispense duration: ${duration.toInt()}',
                style: TextStyle(
                  color: secondaryColor.withOpacity(.8)
                ),
              ),
              Slider(
                min: 1.0,
                max: 60.0,
                value: duration, 
                onChanged: (value){
                  setState(() {
                    duration = value;
                  });

                  updateDuration();
                }
              ),
            ],
          )
        ],
      )
    );
  }
}