import 'package:flutter/material.dart';

class Homee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first app'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Hello ninjas',
          style: TextStyle(fontSize: 18.0, color: Colors.purple[300], ),
        ),
      ),
    );
  }
}
