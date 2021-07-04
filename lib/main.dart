import 'package:flutter/material.dart';
import 'package:piano/home.dart';
import 'package:piano/pianoscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    initialRoute: HomePage.id,
    routes: {
      HomePage.id: (context) => HomePage(),
      PianoScreen.id: (context) => PianoScreen(),
    },
  ));
}
