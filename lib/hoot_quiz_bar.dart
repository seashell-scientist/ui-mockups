import 'package:flutter/material.dart';

import './constants.dart' as Constants;
import './route_testing.dart';

class QuizBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.green.shade100,
      child: Row(
        children: [
          Ink(
            decoration: const ShapeDecoration(
              color: Colors.lightGreen,
              shape: CircleBorder(),
            ),
            child: IconButton(
                icon: Icon(Icons.home),
                splashRadius: 20,
                splashColor: Colors.green.shade50,
                color: Colors.white,
                onPressed: () {
                  //Navigator.pop(context);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => FirstScreen()));
                }),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              //Navigator.pop(context);
            },
            child: Text('Next Question'),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(Constants.Constants.cornerRad)),
                onPrimary: Colors.white,
                primary: Colors.green.shade400),
          ),
          //IconButton(icon: Icon(Icons.search), onPressed: () {}),
          //IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
