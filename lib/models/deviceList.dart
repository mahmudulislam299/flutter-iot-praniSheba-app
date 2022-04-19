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

  //constructor
  NumberOfDevice({
    required this.base_station,
    required this.bolus,
    required this.cowshed_device,
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

  void setDataDeviceData(String data) {
    Map dataMap = jsonDecode(data);
    print(dataMap);
    print(dataMap['base_station']['total']);

    base_station.active = dataMap['base_station']['active'];
    base_station.inactive = dataMap['base_station']['inactive'];
    base_station.total = dataMap['base_station']['total'];

    bolus.active = dataMap['bolus']['active'];
    bolus.inactive = dataMap['bolus']['inactive'];
    bolus.total = dataMap['bolus']['total'];

    cowshed_device.active = dataMap['cowshed_device']['active'];
    cowshed_device.inactive = dataMap['cowshed_device']['inactive'];
    cowshed_device.total = dataMap['cowshed_device']['total'];

    PrintFunc();
  }
  // Future<void> getAllValue() async {
  //   var data = await networkForGetDeviceNumber.getData();
  //   print("data:::");
  //   print(data.runtimeType);
  //   print(data);

  //   Map dataMap = jsonDecode(data);
  //   print(dataMap);
  //   print(dataMap['base_station']['total']);

  //   base_station.active = dataMap['base_station']['active'];
  //   base_station.inactive = dataMap['base_station']['inactive'];
  //   base_station.total = dataMap['base_station']['total'];

  //   bolus.active = dataMap['bolus']['active'];
  //   bolus.inactive = dataMap['bolus']['inactive'];
  //   bolus.total = dataMap['bolus']['total'];

  //   cowshed_device.active = dataMap['cowshed_device']['active'];
  //   cowshed_device.inactive = dataMap['cowshed_device']['inactive'];
  //   cowshed_device.total = dataMap['cowshed_device']['total'];

  //   PrintFunc();
  // }
}
