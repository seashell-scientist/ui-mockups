import 'package:flutter/material.dart';

import './frame_10.dart';
import './frame_12.dart';
import './login_page.dart';
import './library.dart';
import './book_page.dart';
import './book_end_page.dart';
//import 'answer_tile_grid.dart';

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
              child: Text('Book Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookPage()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Book End Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookEndPage()),
                );
              },
            ),
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
                  MaterialPageRoute(builder: (context) => Frame12()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Login Page Button'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Library Page'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LibraryPage()),
                );
              },
            ),

            //Container(child: AnotherClass(),),
            //Container(child: AnswerTile(imageString: 'https://upload.wikimedia.org/wikipedia/en/c/c6/NeoTheMatrix.jpg'),)
            //Container(child: AnswerTileThing(),),
            //Image.asset('blue_owl-02.png'),
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
