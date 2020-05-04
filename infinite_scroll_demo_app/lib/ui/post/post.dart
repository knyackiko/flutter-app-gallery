import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/entity/post.dart';
import 'package:infinitescrolldemoapp/model/post_actions_model.dart';
import 'package:infinitescrolldemoapp/ui/post/post_actions.dart';
import 'package:infinitescrolldemoapp/ui/post/post_header.dart';
import 'package:provider/provider.dart';

class Post extends StatelessWidget {
  final PostEntity post;

  Post({@required this.post});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PostActionsModel>(
          create: (context) => PostActionsModel(),
        ),
      ],
      child: Column(
        children: <Widget>[
          PostHeader(user: post.user),
          Image.asset(post.picture.path),
          PostActions(),
        ],
      ),
    );
  }
}