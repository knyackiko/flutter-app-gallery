import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:infinitescrolldemoapp/entity/picture.dart';
import 'package:infinitescrolldemoapp/model/post_actions_model.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PostActions extends StatelessWidget {
  final List<PictureEntity> pictures;
  final PageController picturePageController;

  PostActions({@required this.pictures, @required this.picturePageController});

  @override
  Widget build(BuildContext context) {
    final postActionsModel =
        Provider.of<PostActionsModel>(context, listen: false);
    final width = MediaQuery.of(context).size.width / 3;

    return Row(
      children: <Widget>[
        Container(
          width: width,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: width / 3,
                child: IconButton(
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
              ),
              SizedBox(
                width: width / 3,
                child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.comment),
                  onPressed: () {},
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                ),
              ),
              SizedBox(
                width: width / 3,
                child: IconButton(
                  icon: FaIcon(FontAwesomeIcons.paperPlane),
                  onPressed: () {},
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
        pictures.length > 1
            ? Container(
                width: width,
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: picturePageController,
                  count: pictures.length,
                  effect: ScrollingDotsEffect(
                      dotHeight: 7,
                      dotWidth: 7,
                      spacing: 3,
                      dotColor: Colors.grey[300],
                      activeDotColor: Theme.of(context).primaryColor),
                ),
              )
            : Container(
                width: width,
              ),
        Container(
          width: width,
          alignment: Alignment.centerRight,
          child: SizedBox(
            width: width / 3,
            child: IconButton(
              icon: Provider.of<PostActionsModel>(context).isBookmarked
                  ? FaIcon(FontAwesomeIcons.solidBookmark)
                  : FaIcon(FontAwesomeIcons.bookmark),
              onPressed: () => postActionsModel
                  .updateIsBookmarked(!postActionsModel.isBookmarked),
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }
}
