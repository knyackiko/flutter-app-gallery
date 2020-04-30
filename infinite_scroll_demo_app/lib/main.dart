import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/ui/container.dart';

void main() => runApp(InfiniteScrollDemoApp());

class InfiniteScrollDemoApp extends StatelessWidget {
  final String _title = 'Infinite Scroll Demo App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: ContainerPage(title: _title),
    );
  }
}
