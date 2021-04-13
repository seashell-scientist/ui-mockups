import 'package:flutter/material.dart';

import './hoot_app_bar.dart';
import './hoot_quiz_bar.dart';
import './constants.dart' as Constants;

class Frame_12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;

    return (MaterialApp(
      home: Scaffold(
        appBar: HootAppBar(),
        bottomNavigationBar: QuizBar(),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              color: Colors.white,
            ),
            Row(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: (screen_width * .35),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Question 1: '),
                                  IconButton(
                                      icon: Icon(Icons.volume_up_rounded),
                                      onPressed: () {})
                                ],
                              ),
                              Text('Text of question 1?')
                            ],
                          )),
                      SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                          width: (screen_width * .35),
                          child: Card(
                              child: Text('question picture'),
                              color: Colors.white)
                          //alignment: Alignment.center,
                          //child: Image.asset(
                          //  'test_book_cover.png',
                          //  width: ((screen_width * .35) * .9),
                          ),
                    ],
                  ),
                  color: Colors.red,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                          width: (screen_width * .15),
                          child: Text('blanklane')),
                    ],
                  ),
                  color: Colors.blue,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                          width: (screen_width * .5),
                          child: Text('placeholder answer lane')),
                    ],
                  ),
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
