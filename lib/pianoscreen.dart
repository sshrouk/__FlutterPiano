import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:piano/compenent.dart';

class PianoScreen extends StatefulWidget {
  static const id = 'PianoScreen';

  @override
  _PianoScreenState createState() => _PianoScreenState();
}

class _PianoScreenState extends State<PianoScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'images/music.png',
              width: size.width,
              fit: BoxFit.cover,
              height: size.height,
            ),
            Column(
              children: [
                PianoButton(
                  onPressed: () {
                    playSound('do.wav');
                  },
                  buttonName: 'Do',
                  buttonNameColor: Colors.white,
                  buttonWidth: size.width / 2,
                  buttonColor: Colors.black,
                ),
                PianoButton(
                  onPressed: () {
                    playSound('re.wav');
                  },
                  buttonName: 'Re',
                  buttonNameColor: Colors.black,
                  buttonWidth: size.width / 2,
                  buttonColor: Colors.white,
                ),
                PianoButton(
                  onPressed: () {
                    playSound('mi.wav');
                  },
                  buttonName: 'Mi',
                  buttonNameColor: Colors.white,
                  buttonWidth: size.width / 2,
                  buttonColor: Colors.black,
                ),
                PianoButton(
                  onPressed: () {
                    playSound('fa.wav');
                  },
                  buttonName: 'Fa',
                  buttonNameColor: Colors.black,
                  buttonWidth: size.width / 2,
                  buttonColor: Colors.white,
                ),
                PianoButton(
                  onPressed: () {
                    playSound('sol.wav');
                  },
                  buttonName: 'Sol',
                  buttonNameColor: Colors.white,
                  buttonWidth: size.width / 2,
                  buttonColor: Colors.black,
                ),
                PianoButton(
                  onPressed: () {
                    playSound('la.wav');
                  },
                  buttonName: 'La',
                  buttonNameColor: Colors.black,
                  buttonWidth: size.width / 2,
                  buttonColor: Colors.white,
                ),
                PianoButton(
                  onPressed: () {
                    playSound('si.wav');
                  },
                  buttonName: 'Si',
                  buttonNameColor: Colors.white,
                  buttonWidth: size.width / 2,
                  buttonColor: Colors.black,
                ),
                PianoButton(
                  onPressed: () {
                    playSound('do2.wav');
                  },
                  buttonName: 'Do',
                  buttonNameColor: Colors.black,
                  buttonWidth: size.width / 2,
                  buttonColor: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void playSound(String soundname) {
    var player = AudioCache();
    player.play(soundname);
  }
}
