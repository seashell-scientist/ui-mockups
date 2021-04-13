import 'package:flutter/material.dart';

import './hoot_app_bar.dart';
import './cloud_background.dart';
import './Constants.dart' as Constants;

class Frame_10 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //screen dimension inquiry
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    double height2 = screen_height - padding.top;

    return MaterialApp(
      home: Scaffold(
        appBar: HootAppBar(),
        body: Stack(
          children: <Widget>[
            Container(
              // first stack item for background
              decoration: CustomBackground().baseBackgroundDecoration(),
            ),
            //second stack item, primary box thing
            Center(
              child: SizedBox(
                //width: 800,
                width: Constants.Constants.mainBoxWidth,
                height: Constants.Constants.mainBoxHeight,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft:
                            Radius.circular(Constants.Constants.cornerRad),
                        topLeft: Radius.circular(Constants.Constants.cornerRad),
                      ),
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 0.5)),
                  child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //ConstrainedBox(
                        // constraints: BoxConstraints.tightFor(
                        //    height: (2300), width: Constants.Constants.mainBoxHeight),
                        Container(
                          //picturebutton start
                          //padding: const EdgeInsets.all(0),
                          height: Constants.Constants.mainBoxHeight,
                          width: Constants.Constants.mainBoxHeight, //square
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      Constants.Constants.cornerRad)),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  Constants.Constants.cornerRad),
                              child: Container(
                                padding: const EdgeInsets.all(0),
                                child: Image.asset('test_book_cover.png'),
                              ),
                            ),
                          ),
                        ),
                        //picturebutton end
                        //spacer row item? use size config here somehow
                        SizedBox(
                          height: 110,
                          width: 50,
                        ),
                        //right hand side
                        Column(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 400,
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Book Title",
                                      style: TextStyle(
                                          fontSize:
                                              Constants.Constants.textSize1))),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 400,
                                  child: Text(
                                      'Book description paragraph: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Porttitor massa id neque aliquam vestibulum morbi blandit cursus. Cras pulvinar mattis nunc sed blandit libero volutpat.'),
                                ),
                                //Expanded(child: Container(color: Colors.amber, width: 400)),
                                SizedBox(
                                    height:
                                        205), //Lathe said something about custom size config, that should go here
                                //to make the space between the paragraph and credits adaptive to different paragraph sizes
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text('credits 1'),
                                        Text('credits 2'),
                                        Text('credits 3'),
                                        Text('credits 4'),
                                      ],
                                    ),
                                    SizedBox(
                                      width: (screen_width / 10), //kinda works?
                                      height: 110,
                                      //child: Text(
                                      //'Screen Size: ${(screen_width / 10).toString()} x ${screen_height.toString()}')
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(
                                                  Constants
                                                      .Constants.cornerRad),
                                        ),
                                        elevation: 10,
                                        primary: Color(0xff151B54),
                                        minimumSize: Size(200, 80),
                                      ),
                                      child: Text('Read Now',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: Constants
                                                  .Constants.textSize2)),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
