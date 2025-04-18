import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty? data:ModalRoute.of(context)!.settings.arguments as Map;
    String bgImage = data['isDayTime']? 'day.png':'night.png';
    Color? bgColor = data['isDayTime']? Colors.blue : Colors.indigo[700];

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('lib/assets/$bgImage'),
            fit: BoxFit.cover)
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () async {
                   dynamic result = await Navigator.pushNamed(context, '/chooseLocation');
                   setState(() {
                     data = {
                       'location' : result['location'],
                       'time' : result['time'],
                       'flag' : result['flag'],
                       'isDayTime' : result['isDayTime'],
                     };
                   });
                  },
                  icon: Icon(Icons.edit_location_alt, color: Colors.white,),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['location'],
                      style: TextStyle(fontSize: 25.0, letterSpacing: 2.0, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  data['time'],
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
