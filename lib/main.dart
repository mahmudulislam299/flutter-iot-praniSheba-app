import 'package:flutter/material.dart';
import 'package:iot_pranisheba_app/pages/login.dart';
import 'package:iot_pranisheba_app/pages/home.dart';
import 'package:iot_pranisheba_app/pages/loadingDeviceNumber.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/login': (context) => loginPage(),
      '/home': (context) => Home(),
      '/loading_device_number': (context) => LoadingDeviceNumber(),
    },
  ));
}
