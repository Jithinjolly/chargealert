import 'package:battery_info/battery_info_plugin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlarmDetector extends StatefulWidget {
  const AlarmDetector({super.key});

  @override
  State<AlarmDetector> createState() => AlarmDetectorState();
}

class AlarmDetectorState extends State<AlarmDetector> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkbatterylevel();
  }

  TextEditingController chargelimit = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = context.mediaQuery.size;
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Set the limit for your phone to charge"),
              SizedBox(
                width: 50,
                child: TextField(
                  controller: chargelimit,
                  keyboardType: TextInputType.number,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  checkbatterylevel() async {
    var batteryinfo = await BatteryInfoPlugin().iosBatteryInfo;
    var batterylevel = batteryinfo!.batteryLevel;
    if (kDebugMode) {
      print(batterylevel);
    }
  }
}
