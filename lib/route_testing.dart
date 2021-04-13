import 'package:flutter/material.dart';

import './frame_10.dart';
import './frame_12.dart';
import './answer_tile.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('1st Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: Text('Book Details Button'),
              onPressed: () {
                Navigator.push(
                  context,
                  //MaterialPageRoute(builder: (context) => SecondScreen()),
                  MaterialPageRoute(builder: (context) => Frame10()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Quiz Page Button'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Frame_12()),
                );
              },
            ),
            AnswerTile(),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('2nd Screen'),
        ),
        body: Center(
            child: RaisedButton(
          child: Text('launch back screen'),
          onPressed: () {
            Navigator.pop(context); //this is go back?
          },
        )));
  }
}
