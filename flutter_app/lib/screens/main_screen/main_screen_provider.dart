import 'package:flutter/material.dart';
import 'dart:math';

class MainScreenProvider extends ChangeNotifier{

  Color _screenColor = Colors.teal;
  Color _textColor = Colors.white;

  Color getScreenColor() => _screenColor;
  Color getTextColor() => _textColor;

  void changeScreenColor(){
    var rng = new Random();
    int red = rng.nextInt(255);
    int green = rng.nextInt(255);
    int blue = rng.nextInt(255);
    _screenColor = Color.fromRGBO(red, green, blue, 1);
    notifyListeners();
  }

  void changeTextColor(){
    var rng = new Random();
    int red = rng.nextInt(255);
    int green = rng.nextInt(255);
    int blue = rng.nextInt(255);
    _textColor = Color.fromRGBO(red, green, blue, 1);
    notifyListeners();
  }

}