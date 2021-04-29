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
        body: Stack(children: <Widget>[
          Container(
            decoration: CustomBackground().baseBackgroundDecoration(),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset('blue_owl-02.png'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Text('Class Code')],
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: '0000'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NamedButton(buttonName: 'go back button'),
                      NamedButton(buttonName: 'Submit Code Button'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class NamedButton extends StatefulWidget {
  final String buttonName;
  final String routeName;
  const NamedButton({Key key, this.buttonName, this.routeName}) : super(key: key);
  @override
  _NamedButtonState createState() => _NamedButtonState();
}

class _NamedButtonState extends State<NamedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
        //add a conditional later here to change the route depending on route name?
        //or can i pass the route/navigator as an argument?
      },
      style: ElevatedButton.styleFrom(
        shape: new RoundedRectangleBorder(
          borderRadius:
              new BorderRadius.circular(Constants.Constants.cornerRad),
        ),
        elevation: 10,
        primary: Color(0xff151B54),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          widget.buttonName,
          //buttonName, //there has to be a way to pass args to widget build
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
