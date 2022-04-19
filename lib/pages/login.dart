import 'package:flutter/material.dart';
import 'package:iot_pranisheba_app/pages/home.dart';

class loginPage extends StatefulWidget {
  loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('testing');
            Navigator.pushNamed(context, '/loading_device_number');
          },
          child: Text('login'),
        ),
      ),
    );
  }
}
