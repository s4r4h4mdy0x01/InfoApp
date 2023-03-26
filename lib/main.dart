import 'package:flutter/material.dart';
import 'package:my_info/screen/my_main_screen.dart';
import 'package:my_info/screen/textfield.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home:   Display(),
    );
  }
}

