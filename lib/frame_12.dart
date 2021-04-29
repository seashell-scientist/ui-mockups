import 'package:flutter/material.dart';

import './hoot_app_bar.dart';
import './hoot_quiz_bar.dart';
import './constants.dart' as Constants;
//import './answer_tile.dart';
import 'answer_tile_grid.dart';

class AnswerTile extends StatelessWidget {
  AnswerTile(this.imageData);
  final String imageData;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.black,
        primary: Colors.white,
        shadowColor: Colors.black,
        textStyle: TextStyle(
          color: Colors.black,
          //fontSize: 25, //omitting fontsize make the text a bit more adaptable
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        elevation: 10,
      ),
      clipBehavior: Clip.none,
      autofocus: false,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: SizedBox(
          height: MediaQuery.of(context).size.width * .13,
          width: MediaQuery.of(context).size.width * .13,
          child: Column(
            children: [
              Text('answer text'),
              //Text('answer picture'),
              Container(
                child: Image.asset(imageData),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Frame12 extends StatelessWidget {
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
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: (screen_width * .4),
                            height: (screen_height * .15),
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: (screen_width * .35),
                                child: SizedBox(
                                  width: ((screen_width * .35) * .8),
                                  height: ((screen_width * .35) * .8),
                                  child: Card(
                                      child: Center(
                                          child: Text('question picture')),
                                      color: Colors.white,
                                      elevation: 5,
                                      shadowColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)))),
                                ),
                                ),
                          ],
                        ),
                      ],
                    ),
                    color: Colors.white,
                  ),
                ),
                AnswerTileThing(),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
