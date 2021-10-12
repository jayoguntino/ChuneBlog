import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/Screens/MailingList/Mobile.dart';
import 'package:website/Screens/MailingList/Tablet.dart';
import 'package:website/Screens/MailingList/Web.dart';

class Layout extends StatefulWidget {
  @override
  _Layout createState() => _Layout();
}

class _Layout extends State<Layout> {
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Mobile(),
      tablet: Tablet(),
      desktop: Web(),
    );
  }
}
