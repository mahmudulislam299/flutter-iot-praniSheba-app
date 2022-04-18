import 'package:flutter/material.dart';
import 'package:iot_pranisheba_app/models/deviceList.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ///
  ///

  NumberOfDevice num_of_device = NumberOfDevice(
      base_station: DeviceCondition(active: 1, inactive: 2, total: 3),
      bolus: DeviceCondition(total: 4, active: 0, inactive: 0),
      cowshed_device: DeviceCondition(total: 5, active: 0, inactive: 0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adorsho PraniSheba IoT App"),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: (() {
          num_of_device.getNumberofDeviceData();
        }),
        child: Text('print details'),
      )),
    );
  }
}
