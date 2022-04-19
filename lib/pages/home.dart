import 'package:flutter/material.dart';
import 'package:iot_pranisheba_app/models/deviceList.dart';
import 'package:iot_pranisheba_app/services/network.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  NumberOfDevice num_of_device = NumberOfDevice(
    base_station: DeviceCondition(active: 0, inactive: 0, total: 0),
    bolus: DeviceCondition(total: 0, active: 0, inactive: 0),
    cowshed_device: DeviceCondition(total: 0, active: 0, inactive: 0),
  );

  @override
  Widget build(BuildContext context) {
    final getData = ModalRoute.of(context)!.settings.arguments as Map;
    print(getData);
    num_of_device.setDataDeviceData(getData['data']);
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Adorsho PraniSheba IoT App"),
      //   centerTitle: true,
      // ),
      body: SafeArea(
          child: Column(
        children: [
          Text(
            'Number of total Base Station: ${num_of_device.base_station.total}',
            style: TextStyle(
                color: Colors.red[800],
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Number of active Base Station: ${num_of_device.base_station.active}',
            style: TextStyle(
                color: Colors.red[800],
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Number of inactive Base Station: ${num_of_device.base_station.inactive}',
            style: TextStyle(
                color: Colors.red[800],
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Number of total Gas sensor: ${num_of_device.cowshed_device.total}',
            style: TextStyle(
                color: Colors.red[800],
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Number of active Gas Sensor: ${num_of_device.cowshed_device.active}',
            style: TextStyle(
                color: Colors.red[800],
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Number of inactive Gas sensor: ${num_of_device.cowshed_device.inactive}',
            style: TextStyle(
                color: Colors.red[800],
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Number of total Bolus: ${num_of_device.bolus.total}',
            style: TextStyle(
                color: Colors.red[800],
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Number of active Bolus: ${num_of_device.bolus.active}',
            style: TextStyle(
                color: Colors.red[800],
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Number of inactive Bolus: ${num_of_device.bolus.inactive}',
            style: TextStyle(
                color: Colors.red[800],
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 60,
          ),
          Center(
            child: ElevatedButton(
              onPressed: (() {}),
              child: const Text(
                'Go to Dashboard',
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      )),
    );
  }
}
