import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/entity/post.dart';

class PostCaption extends StatelessWidget {
  final PostEntity post;

  PostCaption({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          post.likeUsers == null
              ? Container()
              : RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 14, color: Colors.black),
                    children: post.likeUsers.length > 1
                        ? <TextSpan>[
                            TextSpan(text: 'Liked by '),
                            TextSpan(
                                text: post.likeUsers[0].userName,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ' and '),
                            TextSpan(
                                text: 'others',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ]
                        : <TextSpan>[
                            TextSpan(text: 'Liked by '),
                            TextSpan(
                                text: post.likeUsers[0].userName,
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                  ),
                ),
          Container(
            child: RichText(
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              text: TextSpan(
                style: TextStyle(fontSize: 14, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: post.user.userName,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: post.caption),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
