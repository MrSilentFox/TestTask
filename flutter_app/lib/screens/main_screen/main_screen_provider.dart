import 'package:flutter/material.dart';
import 'dart:math';

class MainScreenProvider extends ChangeNotifier{

  Color screenColor = Colors.teal;
  Color textColor = Colors.white;


  void changeScreenColor(){
    var rng = new Random();
    int red = rng.nextInt(255);
    int green = rng.nextInt(255);
    int blue = rng.nextInt(255);
    screenColor = Color.fromRGBO(red, green, blue, 1);
    notifyListeners();
  }

  void changeTextColor(){
    var rng = new Random();
    int red = rng.nextInt(255);
    int green = rng.nextInt(255);
    int blue = rng.nextInt(255);
    textColor = Color.fromRGBO(red, green, blue, 1);
    notifyListeners();
  }
}