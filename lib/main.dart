
import 'package:flutter/material.dart';
import 'package:ict_app/home_page.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter/services.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final navigatorKey= GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: MyHomePage(),

    );
  }
}