import 'package:flutter/material.dart';

import './hoot_app_bar.dart';
import './cloud_background.dart';
import './Constants.dart' as Constants;

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: HootAppBar(),
        body: Stack(
          children: <Widget>[
            Container(decoration: CustomBackground().baseBackgroundDecoration(),),
            Center(
              child: SizedBox(width: MediaQuery.of(context).size.width * .4 ,child:
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container( child: Image.asset('blue_owl-02.png'),),
                Row(mainAxisAlignment: MainAxisAlignment.start, children:[Text('Class Code')],),
                TextField(decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '0000'),),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('go back button'), Text('Submit Code Button'),
                ],)
              ],),),
            ),
          ]
        ),
      ),
    );
  }

  
}
