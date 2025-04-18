import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tut_app/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LocatiState();
}

class _LocatiState extends State<Loading> {
  String time = 'Loading...';

  void setupTime() async {
    WorldTime instance =
        WorldTime(flag: 'London.png', location: 'London', url: 'London');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location' : instance.location,
      'time' : instance.time,
      'flag' : instance.flag,
      'isDayTime' : instance.isDayTime,
    });
  }

  @override
  void initState() {
    setupTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
