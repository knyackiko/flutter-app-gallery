import 'package:flutter/material.dart';
import 'package:navigator/ui/first.dart';
import 'package:navigator/ui/home.dart';
import 'package:navigator/ui/second.dart';
import 'package:navigator/ui/third.dart';

void main() => runApp(NavigationDemoApp());

class NavigationDemoApp extends StatelessWidget {
  final String _description = 'Navigation Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(title: _description),
        '/first': (BuildContext context) => FirstPage(),
        '/second': (BuildContext context) => SecondPage(),
        '/third': (BuildContext context) => ThirdPage()
      },
    );
  }
}
