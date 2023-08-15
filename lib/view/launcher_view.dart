import 'package:flutter/material.dart';
import 'dart:async';

//import '../constants.dart';

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/Logo-Bank-BNI-PNG.png",
            height: 100.0,
            width: 200.0,
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 40,
          ),
          const CircularProgressIndicator(
            color: Colors.blue,
          )
        ],
      )),
    );
  }
}
