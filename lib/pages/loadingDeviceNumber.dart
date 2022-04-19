import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:iot_pranisheba_app/services/network.dart';

class LoadingDeviceNumber extends StatefulWidget {
  LoadingDeviceNumber({Key? key}) : super(key: key);

  @override
  State<LoadingDeviceNumber> createState() => _LoadingDeviceNumberState();
}

class _LoadingDeviceNumberState extends State<LoadingDeviceNumber> {
  String deviceInfo = 'loading';

  void getDeviceInfo() async {
    Network DeviceInfo = Network(
        url: 'http://iotdev.pranisheba.com.bd/api/v1/devices/num_of_devices/');
    await DeviceInfo.getData();
    print('test data check......');
    print(DeviceInfo.data);
    await Navigator.pushNamed(context, '/home', arguments: {
      'data': DeviceInfo.data,
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDeviceInfo();
    print('print check');
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitWanderingCubes(
          color: Colors.blue,
          size: 50.0,
        ),
      ),
    );
  }
}
