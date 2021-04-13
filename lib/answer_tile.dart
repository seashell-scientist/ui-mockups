import 'package:flutter/material.dart';

class AnswerTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        elevation: 15,
      ),
      clipBehavior: Clip.none,
      autofocus: false,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: SizedBox(
          height: 300,
          width: 300,
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
