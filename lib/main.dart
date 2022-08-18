import 'package:flutter/material.dart';
import 'package:ta_rides_final/screens/create_profile_screen.dart';
import 'package:ta_rides_final/screens/login_screen.dart';
import 'package:ta_rides_final/screens/map_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
