import 'package:exercise/Screens/home.dart';
import 'package:exercise/Screens/rehab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    Rehab.tag: (context)=>const Rehab(),
    Home.tag: (context)=>const Home(),
  };

   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
      routes: routes,

    );
  }
}

