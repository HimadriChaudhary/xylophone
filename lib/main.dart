import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Xylophone(),
  ));
}

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  final player = AudioCache();

  Widget soundTiles(
      {Color color = Colors.white, String sur = 'sa', String x = '1'}) {
    return OutlinedButton(
        onPressed: () {
          player.play('assets_note$x.wav');
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          fixedSize: MaterialStateProperty.all<Size>(Size(00, 115)),
        ),
        child: Text(
          sur,
          style: TextStyle(color: Colors.white),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          soundTiles(x: '1', color: Colors.purple, sur: 'Sa'),
          soundTiles(color: Colors.indigo, x: '2', sur: 'Re'),
          soundTiles(sur: 'Ga', x: '3', color: Colors.blue),
          soundTiles(sur: 'Ma', x: '4', color: Colors.green),
          soundTiles(sur: 'Pa', x: '5', color: Colors.yellow),
          soundTiles(sur: 'Dha', x: '6', color: Colors.orange),
          soundTiles(sur: 'Ni', x: '7', color: Colors.red),
        ]),
      ),
    );
  }
}
