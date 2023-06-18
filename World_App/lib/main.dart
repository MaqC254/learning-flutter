import 'package:flutter/material.dart';
import 'package:world_app/pages/home.dart';
import 'package:world_app/pages/loading.dart';
import 'package:world_app/pages/choose_location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context) => const Loading(),
      '/home': (context) => const Home(),
      '/location': (context) =>const ChooseLocation(),
    },
  ));

}


