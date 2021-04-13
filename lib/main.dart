import 'package:flutter/material.dart';

import './frame_10.dart';
import './frame_12.dart';
import './route_testing.dart';
//import './hoot_app_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'homepage screen?',
      home: Frame_10(),
      //home: Frame_12(),
      //home: FirstScreen(),
    );
  }
}
