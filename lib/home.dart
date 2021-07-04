import 'package:flutter/material.dart';
import 'package:piano/pianoscreen.dart';

class HomePage extends StatefulWidget {
  static const id = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.music_note),
          onPressed: () {
            Navigator.pushNamed(context, PianoScreen.id);
          },
        ),
       /* body: Container(
          height: size.height,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
              )
            ],
          ),
        ),*/
      ),
    );
  }
}
