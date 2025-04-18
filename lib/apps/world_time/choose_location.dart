import 'package:flutter/material.dart';
import 'package:tut_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(flag: 'egypt.jpeg', location: 'Cairo', url: 'Cairo'),
    WorldTime(flag: 'england.png', location: 'London', url: 'London'),
    WorldTime(flag: 'holanda.jpeg', location: 'Amsterdam', url: 'Amsterdam'),
    WorldTime(flag: 'france.png', location: 'Paris', url: 'Paris'),
    WorldTime(flag: 'germany.jpg', location: 'Berlin', url: 'Berlin'),
    WorldTime(flag: 'dubai.jpeg', location: 'Dubai', url: 'Dubai'),
    WorldTime(flag: 'ispain.jpeg', location: 'Madrid', url: 'Madrid'),
    WorldTime(flag: 'italy.png', location: 'Roma', url: 'Roma'),
  ];
  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Choose a Location',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('lib/assets/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
