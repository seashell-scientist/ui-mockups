import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

import './hoot_app_bar.dart';
import './hoot_quiz_bar.dart';
import './constants.dart' as Constants;
//import 'answer_tile_grid.dart';

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
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(),
                SafeArea(child:
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
                                    child:
                                        Center(child: Text('question picture')),
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
                ),
                SizedBox(width: screen_width*.05),
                //Spacer(),
                SafeArea(child: Center(child: AnswerTileThing())),
              ],
            ),
            
          ],
        ),
      ),
    ));
  }
}

//create 'reader' for input/args, string imageString
class AnswerTile extends StatefulWidget {
  final String answerString;
  final String imageString;
  const AnswerTile({Key key, this.answerString, this.imageString})
      : super(key: key);
  @override
  _AnswerTileState createState() => _AnswerTileState();
}

//where the read arg goes
class _AnswerTileState extends State<AnswerTile> {
  @override
  Widget build(BuildContext context) {
    //return Container(child: Image.asset(widget.imageString));
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        //may need conversion to elevatedButton style: ButtonStyle to get the conditional color change on press?
        onPrimary: Colors.black, //text
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
        padding: EdgeInsets.all(4),
        child: SizedBox(
          height: MediaQuery.of(context).size.width * .15, //.13
          width: MediaQuery.of(context).size.width * .15,
          child: Column(
            children: [
              //Text('ANDERSON???'),
              Text(widget.answerString),
              //Text('answer picture'),
              Expanded(
                flex: 1,
                child: Image.network(widget.imageString),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//where the arg gets passed
class AnswerTileThing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
//wrap approach
    return SizedBox(width: screen_width*.5 ,
          child: Wrap(spacing: screen_height*.02, runSpacing: screen_height*.02,
        children: [
          AnswerTile(
                    answerString:'wes Anderson',
                    imageString:
                        'https://m.media-amazon.com/images/M/MV5BMTY1MjgzODIwNF5BMl5BanBnXkFtZTcwNTM2NzExMw@@._V1_UY317_CR10,0,214,317_AL_.jpg',
                  ),
                  AnswerTile(
                    answerString:'Colonel',
                          imageString:
                              'https://tse2.mm.bing.net/th?id=OIP.y9CLuLh4R0QSwLIIWNOLNAHaHD&pid=Api'),
                  AnswerTile(
                    answerString:'Cooper',
                          imageString:
                              'https://tse3.mm.bing.net/th?id=OIP.1jLZAIx9nzOn4EeGpFLZWAHaJw&pid=Api'),
                  AnswerTile(
                    answerString:'Mr. Anderson',
                          imageString:
                              'https://upload.wikimedia.org/wikipedia/en/c/c6/NeoTheMatrix.jpg')
        ],
      ),
    );

//layout grid approach has some isssues with overflow
/*
    return SafeArea(
      child: Expanded(
        flex: 1,
        //child: AspectRatio(
         // aspectRatio: 1 / 1,
          child: Container(
            //alignment: Alignment.center,
            color: Colors.white,
            child: LayoutGrid(
              //5x5
              areas: ''' 
    .   .           .  .  
    .  yellow    green .

    .  red       blue  . 
    .   .         .    . 
  ''', //ah can't have repeat colors, only one per designated area
              // Note that the number of columns and rows matches the grid above (3x3)
              columnSizes: [
                //x axis
                (screen_width * .05).px,
                auto,
                //(screen_height * .01).px,
                auto,
                (screen_width * .05).px,
              ],
              columnGap: (screen_width * .01),
              rowSizes: [
                //y axis
                (screen_height * .05)
                    .px, //.fr is for flexible size, fill all space
                auto,
                //(screen_height * .01).px,
                auto,
                (screen_height * .05).px,
              ],
              rowGap: (screen_width * .01),
              children: [
                // Using NamedAreaGridPlacement constructor
                // Alternatively, an extension method on Widget is available
                AnswerTile(
                  answerString:'wes Anderson',
                  imageString:
                      'https://m.media-amazon.com/images/M/MV5BMTY1MjgzODIwNF5BMl5BanBnXkFtZTcwNTM2NzExMw@@._V1_UY317_CR10,0,214,317_AL_.jpg',
                ).inGridArea('blue'),
                //Container(color: Colors.blue).inGridArea('blue'),
                AnswerTile(
                  answerString:'Colonel',
                        imageString:
                            'https://tse2.mm.bing.net/th?id=OIP.y9CLuLh4R0QSwLIIWNOLNAHaHD&pid=Api')
                    .inGridArea('red'),
                AnswerTile(
                  answerString:'Cooper',
                        imageString:
                            'https://tse3.mm.bing.net/th?id=OIP.1jLZAIx9nzOn4EeGpFLZWAHaJw&pid=Api')
                    .inGridArea('green'),
                AnswerTile(
                  answerString:'Mr. Anderson',
                        imageString:
                            'https://upload.wikimedia.org/wikipedia/en/c/c6/NeoTheMatrix.jpg')
                    .inGridArea('yellow'),
              ],
            ),
          ),
        ),
      //),
    );

    */
  }
}
