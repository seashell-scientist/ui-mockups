import 'package:flutter/material.dart';

class CustomBackground {
  BoxDecoration baseBackgroundDecoration() {
    return BoxDecoration(
      color: Colors.lightBlue[50],
      image: DecorationImage(
        scale: 2,
        image: AssetImage("clouds-repeating-3.png"),
        repeat: ImageRepeat.repeat,
      ),
    );
  }
}
