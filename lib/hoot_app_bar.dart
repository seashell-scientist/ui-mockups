import 'package:flutter/material.dart';

class HootAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(centerTitle: false, title: Text("Hoot Web App"));
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
