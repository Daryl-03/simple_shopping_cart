import 'package:flutter/material.dart';

class AppLayout {
  static double displayWidth(context) => MediaQuery.of(context).size.width;
  static double displayHeightFull(context){
    return MediaQuery.of(context).size.height;
  }
  static double displayActualHeight(context){
    return MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top-kToolbarHeight-kBottomNavigationBarHeight;
  }
  static double displayHeightWithTBars(context){
    return MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
  }
  static double displayHeightWithoutTBar(context){
    return MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight;
  }
  static double displayHeightWithoutBBar(context){
    return MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kBottomNavigationBarHeight;
  }
}