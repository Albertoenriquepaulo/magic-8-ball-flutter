import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: AskMe(),
    );
  }
}

class AskMe extends StatefulWidget {
  @override
  _AskMeState createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
  int imageRandom = 1;

  void imageChanger() {
    setState(() {
      imageRandom = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                imageChanger();
              },
              //Estas dos lineas añaden un efecto mejor cuando cambia la imagen
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Image.asset('images/ball$imageRandom.png'),
            ),
          ),
        ],
      ),
    );
  }
}
