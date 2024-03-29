import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/entity/post.dart';
import 'package:infinitescrolldemoapp/model/post_actions_model.dart';
import 'package:infinitescrolldemoapp/ui/post/post_actions.dart';
import 'package:infinitescrolldemoapp/ui/post/post_caption.dart';
import 'package:infinitescrolldemoapp/ui/post/post_comment.dart';
import 'package:infinitescrolldemoapp/ui/post/post_footer.dart';
import 'package:infinitescrolldemoapp/ui/post/post_header.dart';
import 'package:infinitescrolldemoapp/ui/post/post_pictures.dart';
import 'package:provider/provider.dart';

class Post extends StatelessWidget {
  final PostEntity post;
  final PageController _picturePageController = PageController(initialPage: 0);

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PostHeader(user: post.user),
          PostPictures(
            pictures: post.pictures,
            picturePageController: _picturePageController,
          ),
          PostActions(
            pictures: post.pictures,
            picturePageController: _picturePageController,
          ),
          PostCaption(post: post),
          PostComment(),
          PostFooter(postedTime: post.postedTime),
        ],
      ),
    );
  }
}
