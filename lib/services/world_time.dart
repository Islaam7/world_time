import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time = '';
  String date = '';
  String flag;
  String url;
  bool isDayTime = false;

  WorldTime(
      {required this.flag,
      required this.location,
      required this.url});

  Future<void> getTime() async {
    try{
      var urll = Uri.parse(
          'https://www.timeapi.io/api/time/current/zone?timeZone=Europe%2F$url');
      http.Response response = await http.get(urll);

      Map data = jsonDecode(response.body);
      time = data['dateTime'];
      DateTime dateTime = DateTime.parse('$time');
      isDayTime = dateTime.hour> 6 && dateTime.hour<8? true : false;
      time = DateFormat.jm().format(dateTime);

      print(data);
    }
    catch(e) {
      print('Read this error: $e');
      time = 'Could not get the time!';
    }


  }
}
