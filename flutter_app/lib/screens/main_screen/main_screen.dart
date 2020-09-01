import 'package:flutter/material.dart';
import 'package:flutter_app/screens/main_screen/main_screen_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MainScreenProvider _state = Provider.of<MainScreenProvider>(context);
    return Scaffold(
        body: GestureDetector(
      child: AnimatedContainer(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: _state.getScreenColor(),
        child: Center(
          child: GestureDetector(
            child: Text(
              'Hey there',
              style: GoogleFonts.pacifico(fontSize: 40, color: _state.getTextColor()),
            ),
            onTap: (){_state.changeTextColor();},
          ),
        ),
        duration: Duration(milliseconds: 750),
      ),
      onTap: () {
        _state.changeScreenColor();
      },
    ));
  }
}
