import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/Screens/SearchScreen.dart';
import 'package:ui/Screens/accountScreend.dart';
import 'package:ui/Screens/firstScreen.dart';
import 'package:ui/Screens/homeScreen.dart';
import 'package:ui/Screens/reelsScreen.dart';
import 'package:ui/Screens/screenDataHelper.dart';

class Utils
{
  RxInt selectedIndex=0.obs;
  List<Widget>pageList= [
    HomeScreen(),
    SearchScreen(),
    reelsScreen(),
    
    AccountScreen(),
    
  ];

  PreferredSizeWidget myappbar(String title)
  {
    return AppBar(
      title:Text(title),
      automaticallyImplyLeading: false,
      centerTitle: true,

    );
  }
  

}