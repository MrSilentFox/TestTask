import 'package:flutter/material.dart';
import 'package:flutter_app/screens/main_screen/main_screen.dart';
import 'package:flutter_app/screens/main_screen/main_screen_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
          providers: [
            ChangeNotifierProvider<MainScreenProvider>.value(value: MainScreenProvider()),
          ],
          child: MainScreen()),
    );
  }
}


