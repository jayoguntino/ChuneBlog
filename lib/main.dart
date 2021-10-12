///To God be the Glory

import 'package:flutter/material.dart';
import 'package:website/Screens/ScreenLayout.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: ScreenLayout(),
    );
  }
}
