import 'package:bottomnavbardemoapp/ui/container.dart';
import 'package:flutter/material.dart';

void main() => runApp(BottomNavBarDemoApp());

class BottomNavBarDemoApp extends StatelessWidget {
  final String _title = 'Bottom Nav Bar Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => ContainerPage(title: _title),
      },
    );
  }
}
