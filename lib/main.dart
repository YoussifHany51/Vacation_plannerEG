import 'package:flutter/material.dart';
import 'package:travel_ui/screens/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Traveller EG',
      home: WelcomeScreen(),
    );
  }
}
