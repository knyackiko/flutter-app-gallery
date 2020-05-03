import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/entity/post.dart';
import 'package:infinitescrolldemoapp/ui/post/post_header.dart';

class Post extends StatelessWidget {
  final PostEntity post;

  Post({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PostHeader(user: post.user),
        Image.asset(post.picture.path),
      ],
    );
  }
}
