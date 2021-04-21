import 'package:flutter/material.dart';

import './hoot_app_bar.dart';
import './hoot_quiz_bar.dart';
import './constants.dart' as Constants;
//import './answer_tile.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class AnswerTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.black,
        primary: Colors.blue,
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
        child:
        SizedBox(
        height: MediaQuery.of(context).size.width*.13,
        width: MediaQuery.of(context).size.width*.13,
        child: Column(
          children: [
            Text('answer text'),
            Text('answer picture'),
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
                        Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: (screen_width * .35),
                                child: SizedBox(
                                  width: ((screen_width * .35) * .8),
                                  height: ((screen_width * .35) * .8),
                                  child: Card(
                                      child:
                                          Center(child: Text('question picture')),
                                      color: Colors.white,
                                      elevation: 5,s
                                      shadowColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25)))),
                                )
                                //alignment: Alignment.center,
                                //child: Image.asset(
                                //  'test_book_cover.png',
                                //  width: ((screen_width * .35) * .9),
                                ),
                          ],
                        ),
                      ],
                    ),
                    color: Colors.red,
                  ),
                ),
                                Expanded(
                  flex: 1,
                  
                    child:Container( //alignment: Alignment.center,
                    color: Colors.green,
                    child:LayoutGrid(//5x5
                      areas: ''' 
     .  .   .    .   .  
     .  yellow  .  green  . 
      .   .   .   .   . 
     .  red  . blue  . 
     .   .   .   .  . 
  ''', //ah can't have repeat colors, only one per designated area
                      // Note that the number of columns and rows matches the grid above (3x3)
                      columnSizes: [ //x
                        (screen_width * .05).px,
                        auto,
                        (screen_height * .01).px,
                        auto,
                        (screen_width * .05).px,
                      ],
                      rowSizes: [ //y
                        (screen_height * .05).px, //.fr is for flexible size, fill all space
                        auto,
                        (screen_height * .01).px,
                        auto,
                        (screen_height * .05).px,
                      ],
                      children: [
                        // Using NamedAreaGridPlacement constructor
                        // Alternatively, an extension method on Widget is available
                        AnswerTile().inGridArea('blue'),
                        //Container(color: Colors.blue).inGridArea('blue'),
                        AnswerTile().inGridArea('red'),
                        AnswerTile().inGridArea('green'),
                        AnswerTile().inGridArea('yellow'),
                      ],
                    ),
                  ),
                  ),
                
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
