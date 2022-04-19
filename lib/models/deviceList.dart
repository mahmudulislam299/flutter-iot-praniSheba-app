import 'package:iot_pranisheba_app/services/network.dart';
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
  late Network networkForGetDeviceNumber;

  //constructor
  NumberOfDevice({
    required this.base_station,
    required this.bolus,
    required this.cowshed_device,
    required this.networkForGetDeviceNumber,
  });

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

  Future<void> getAllValue() async {
    var data = await networkForGetDeviceNumber.getData();
    print("data:::");
    print(data.runtimeType);
    print(data);

    Map dataMap = jsonDecode(data);
    print(dataMap);
    print(dataMap['base_station']['total']);

    // base_station.active = data['base_station'];
    // base_station.inactive = data['base_station'];
    // base_station.total = data['base_station'];

    // bolus.active = data['bolus'];
    // bolus.inactive = data['bolus'];
    // bolus.total = data['bolus'];

    // cowshed_device.active = data['cowshed_device'];
    // cowshed_device.inactive = data['cowshed_device'];
    // cowshed_device.total = data['cowshed_device'];
  }
}
