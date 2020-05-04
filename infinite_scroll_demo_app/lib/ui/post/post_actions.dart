import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:infinitescrolldemoapp/model/post_actions_model.dart';
import 'package:provider/provider.dart';

class PostActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final postActionsModel =
        Provider.of<PostActionsModel>(context, listen: false);

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Provider.of<PostActionsModel>(context).isLiked
                      ? FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
                        )
                      : FaIcon(FontAwesomeIcons.heart),
                  onPressed: () =>
                      postActionsModel.updateIsLiked(!postActionsModel.isLiked),
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.comment),
                  onPressed: () {},
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.paperPlane),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          IconButton(
            icon: Provider.of<PostActionsModel>(context).isBookmarked
                ? FaIcon(FontAwesomeIcons.solidBookmark)
                : FaIcon(FontAwesomeIcons.bookmark),
            onPressed: () => postActionsModel
                .updateIsBookmarked(!postActionsModel.isBookmarked),
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
