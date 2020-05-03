import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/entity/picture.dart';

class PictureDetailPage extends StatelessWidget {
  static const routeName = '/picture-detail';

  @override
  Widget build(BuildContext context) {
    final PictureDetailArguments args =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Center(child: Image.asset(args.picture.path)),
    );
  }
}

class PictureDetailArguments {
  final Picture picture;

  PictureDetailArguments({@required this.picture});
}
