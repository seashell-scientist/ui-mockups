import 'package:flutter/material.dart';
import 'package:page11/frame_10.dart';
import 'package:responsive_framework/responsive_framework.dart';
import './frame_12.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget),
          minWidth: 1000,
          defaultScale: true,
          breakpoints: [
            //ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.resize(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(1800, name: "4K"),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      theme: Theme.of(context).copyWith(platform: TargetPlatform.android),
      debugShowCheckedModeBanner: false,
      home: Frame12(),
    );
  }
}
