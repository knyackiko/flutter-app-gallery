import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/ui/container.dart';
import 'package:infinitescrolldemoapp/ui/picture_detail/picture_detail.dart';

void main() => runApp(InfiniteScrollDemoApp());

class InfiniteScrollDemoApp extends StatelessWidget {
  final String _title = 'Infinite Scroll Demo App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(primarySwatch: Colors.purple),
      initialRoute: ContainerPage.routeName,
      routes: <String, WidgetBuilder>{
        ContainerPage.routeName: (BuildContext context) =>
            ContainerPage(title: _title),
        PictureDetailPage.routeName: (BuildContext context) =>
            PictureDetailPage(),
      },
    );
  }
}
