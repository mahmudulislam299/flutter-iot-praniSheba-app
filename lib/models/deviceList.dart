import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class DeviceCondition {
  late int total;
  late int active;
  late int inactive;

  DeviceCondition({this.total = 0, this.active = 0, this.inactive = 0});
}

class NumberOfDevice {
  late DeviceCondition base_station;
  late DeviceCondition bolus;
  late DeviceCondition cowshed_device;

  //constructor
  NumberOfDevice(
      {required this.base_station,
      required this.bolus,
      required this.cowshed_device});

  void PrintFunc() {
    print(base_station.active);
    print(base_station.inactive);
    print(base_station.total);

    print(bolus.active);
    print(bolus.inactive);
    print(bolus.total);

    print(cowshed_device.active);
    print(cowshed_device.inactive);
    print(cowshed_device.total);
  }

  Future<void> getNumberofDeviceData() async {
    // try {
    Response response = await get(Uri.parse(
        'http://iotdev.pranisheba.com.bd/api/v1/devices/num_of_devices/'));
    // print(response.body);
    Map data = jsonDecode(response.body);
    print(data);
    // base_station.active = data['base_station.active'];
    // print(base_station.active);

    // }
  }
}
