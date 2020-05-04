import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/entity/post.dart';
import 'package:infinitescrolldemoapp/ui/post/post.dart';

class PictureDetailPage extends StatelessWidget {
  static const routeName = '/picture-detail';

  @override
  Widget build(BuildContext context) {
    final PictureDetailArguments args =
        ModalRoute.of(context).settings.arguments;
    final post = args.post;

    return Scaffold(
      appBar: AppBar(title: Text('Detail')),
      body: Post(post: post),
    );
  }
}

class PictureDetailArguments {
  final PostEntity post;

  PictureDetailArguments({@required this.post});
}
