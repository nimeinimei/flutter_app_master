import 'dart:ui';
import 'package:flutter/material.dart';

class ThemeUtil{

  /*返回颜色位置*/
  static int GetColorLocation(String theme){
    switch(theme){
      case "blue":
        return 0;
      case "yellow":
        return 1;
      case "green":
        return 2;
    }
  }
  /*返回颜色名字*/
  static String GetColorName(String theme){
    switch(theme){
      case "blue":
        return "默认蓝";
      case "yellow":
        return "柠檬黄";
      case "green":
        return "薄荷绿";
    }
  }
  /*返回颜色图片命名已_为基准 默认为""*/
  static String SetPhotoColor(String theme){
    switch(theme){
      case "blue":
        return "";
      case "yellow":
        return "_yellow";
      case "green":
        return "_green";
    }

  }

  /*设置字体颜色*/
  static Color SetFontColor(String theme){
   switch(theme){
     case "blue":
       return Colors.blue;
     case "green":
       return Color.fromARGB(255, 140,193,75);
     case "yellow":
       return Color.fromARGB(255,247,210,127);
   }
  }
  /*设置透明颜色*/
  static Color SetTransparencyColor(String theme)
  {switch(theme){
      case "blue":
        return Color.fromARGB(60,22,144,255);
      case "green":
        return Color.fromARGB(60, 140,193,75);
      case "yellow":
        return Color.fromARGB(60,247,210,127);
    }
  }



  /*设置actionbar的渐变颜色*/
  static List<Color> setActionBar(String theme){
  switch(theme){
    case "blue":
      return [Colors.cyan,
               Colors.blue,
               Colors.blueAccent,
               Colors.blue,
               Colors.cyan
              ];
    case "green":
      return  [
             Color.fromARGB(255, 157,193,134),
             Color.fromARGB(255, 144,193,75),
             Color.fromARGB(255, 140,193,75),
             Color.fromARGB(255, 144,193,75),
             Color.fromARGB(255, 157,193,134),
               ];
    case "yellow":
      return [Color.fromARGB(255,232,200,51),
              Color.fromARGB(255,247,200,107),
              Color.fromARGB(255,247,210,127),
              Color.fromARGB(255,247,200,107),
              Color.fromARGB(255,232,200,51)
               ];
  }

  }




}