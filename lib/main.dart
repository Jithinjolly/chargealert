import 'package:chargealert/alarm.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: AlarmDetector(),
    ),
  ));
}
