import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/Screens/firstScreen.dart';
import 'package:ui/Screens/homeScreen.dart';
import 'package:ui/utils/Utils.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        primarySwatch: Colors.orange,
        primaryColor: Colors.orange,
      ),
      home: firstScreen(),);
  }
}