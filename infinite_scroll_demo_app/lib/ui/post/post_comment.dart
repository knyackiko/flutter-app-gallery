import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostComment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
        child: Text(
          'View all 6 comments',
          style: TextStyle(color: Colors.grey[600]),
        ));
  }
}
