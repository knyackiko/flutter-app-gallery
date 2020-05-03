import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/entity/user.dart';

class PostHeader extends StatelessWidget {
  final UserEntity user;

  PostHeader({@required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        user.userIconPath,
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  '${user.userName} ・ ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Follow',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}
