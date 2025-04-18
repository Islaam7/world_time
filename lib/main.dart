import 'package:flutter/material.dart';
import 'package:tut_app/apps/world_time/choose_location.dart';
import 'package:tut_app/widgets/awesome_quote.dart';
import 'package:tut_app/widgets/home_view.dart';
import 'package:tut_app/widgets/id_card.dart';
import 'apps/world_time/home.dart';
import 'apps/world_time/loading.dart';

void main() {
  runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/' : (context) => Loading(),
    '/home' : (context) => Home(),
    '/chooseLocation' : (context) => ChooseLocation(),
  },
  debugShowCheckedModeBanner: false,));
}

