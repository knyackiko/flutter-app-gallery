import 'package:bottomnavbardemoapp/model/container_model.dart';
import 'package:bottomnavbardemoapp/model/count_down_model.dart';
import 'package:bottomnavbardemoapp/model/count_up_model.dart';
import 'package:bottomnavbardemoapp/ui/container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(BottomNavBarDemoApp());

class BottomNavBarDemoApp extends StatelessWidget {
  final String _title = 'Bottom Nav Bar Demo';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CountUpModel>(
            create: (context) => CountUpModel()),
        ChangeNotifierProvider<CountDownModel>(
            create: (context) => CountDownModel()),
        ChangeNotifierProvider<ContainerModel>(
            create: (context) => ContainerModel()),
      ],
      child: MaterialApp(
        title: _title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => ContainerPage(title: _title),
        },
      ),
    );
  }
}
