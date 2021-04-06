import 'package:flutter/material.dart';

import './hoot_app_bar.dart';
import './cloud_background.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
                width: 550,
                height: 300,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 0.5)),
                  child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          //picturebutton start
                          height: 300,
                          width: 300,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('test_book_cover.png'),
                                ),
                              ),
                            ),
                          ),
                        ),
                        //picturebutton end
                        //
                        //right hand side
                        Center(
                          child: Column(
                            children: [
                              Text("Book Title"),
                              Text('Book description paragraph'),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text('credits 1'),
                                      Text('credits 2'),
                                      Text('credits 3'),
                                      Text('credits 4'),
                                    ],
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('read now button'),
                                  )
                                ],
                              )
                            ],
                          ),
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
