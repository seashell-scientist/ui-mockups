import 'package:flutter/material.dart';

class CustomBackground {
  BoxDecoration baseBackgroundDecoration() {
    return BoxDecoration(
      color: Colors.blue.shade100,
      image: DecorationImage(
        scale: 2,
        image: AssetImage("clouds-repeating-3.png"),
        repeat: ImageRepeat.repeat,
      ),
    );
  }
}
