///To God be the Glory

import 'package:flutter/material.dart';
import 'package:website/Screens/Blogs/Kendrick.dart';
import 'package:website/Screens/HomeScreen.dart';
import 'package:website/Screens/ScreenLayout.dart';
//import 'package:website/Screens/MailingList/Layout.dart';
//import 'package:website/Screens/Shop/Shop.dart';

//import 'Screens/MailingList/Layout.dart';
//import 'package:website/Screens/Blogs/Dave/Dave.dart';
//import 'package:website/Screens/Shop/Shop.dart';
//import 'package:website/Screens/MailingList/Layout.dart';
//import 'package:website/Screens/MailingList/Layout.dart';
//import 'package:website/Screens/MailingList/Web.dart';
//import 'package:website/Screens/blog.dart';
//import 'package:website/Screens/HomeScreen.dart';
//import 'package:website/Screens/Shop/Shop.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      //home: Layout(),
      //home: Shop()
      //home: Dave(),
      //home: Layout(),
      //home: Kendrick()
      home: ScreenLayout(),
    );
  }
}
