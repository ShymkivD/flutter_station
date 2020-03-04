import 'package:flutter/material.dart';
import 'package:flutterstation/ui/screen/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme =
        ThemeData(fontFamily: "Roboto", primaryColor: Color(0xFF18A0D7));

    return MaterialApp(
      title: 'Charge Station',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: HomePage(),
    );
  }
}
