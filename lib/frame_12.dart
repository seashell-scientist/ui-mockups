import 'package:flutter/material.dart';

import './hoot_app_bar.dart';
import './hoot_quiz_bar.dart';
import './constants.dart' as Constants;
import './answer_tile.dart';

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
                                  Text('Question 1: ',
                                      textScaleFactor: 2,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  IconButton(
                                      icon: Icon(Icons.volume_up_rounded,
                                          size: 30),
                                      onPressed: () {})
                                ],
                              ),
                              Text('Text of question 1', textScaleFactor: 2)
                            ],
                          )),
                      SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                          width: (screen_width * .35),
                          child: SizedBox(
                            width: ((screen_width * .35) * .8),
                            height: ((screen_width * .35) * .8),
                            child: Card(
                                child: Center(child: Text('question picture')),
                                color: Colors.white,
                                elevation: 5,
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)))),
                          )
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
                        //child: Text('blanklane'),
                      ),
                    ],
                  ),
                  color: Colors.white,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        width: (screen_width * .5),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          children: [
                            AnswerTile(),
                            AnswerTile(),
                            AnswerTile(),
                            AnswerTile(),

                            /*
                            SizedBox(
                                height: 300,
                                width: 300,
                                child: Card(
                                  color: Colors.red.shade300,
                                )),
                            SizedBox(
                                height: 300,
                                width: 300,
                                child: Card(
                                  color: Colors.green.shade300,
                                )),
                            SizedBox(
                                height: 300,
                                width: 300,
                                child: Card(
                                  color: Colors.blue.shade300,
                                )),
                            SizedBox(
                                height: 300,
                                width: 300,
                                child: Card(
                                  color: Colors.amber.shade300,
                                )),
                                */
                          ],
                        ),
                      ),
                    ],
                  ),
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
