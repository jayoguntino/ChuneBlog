import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/Screens/HomeScreen.dart';
import 'package:website/Screens/HomeScreenTablet.dart';

class ScreenLayout extends StatefulWidget {
  @override
  _ScreenLayout createState() => _ScreenLayout();
}

class _ScreenLayout extends State<ScreenLayout> {
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeScreenTablet(),
      tablet: HomeScreenTablet(),
      desktop: HomeScreen(),
    );
  }
}
