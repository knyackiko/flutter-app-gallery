import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PostFooter extends StatelessWidget {
  final DateTime postedTime;

  PostFooter({@required this.postedTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
      child: Text(_getDifference(postedTime),
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12,
          )),
    );
  }

  String _getDifference(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);
    final inMinutes = difference.inMinutes;
    if (inMinutes < 60) {
      return '${inMinutes.toString()} minute${inMinutes > 1 ? 's' : ''} ago';
    }

    final inHours = difference.inHours;
    if (inHours < 24) {
      return '${inHours.toString()} hour${inHours > 1 ? 's' : ''} ago';
    }

    final inDays = difference.inDays;
    if (inDays < 7) {
      return '${inDays.toString()} day${inDays > 1 ? 's' : ''} ago';
    }

    final isYearDifferent = dateTime.year != now.year;
    return '${dateTime.day} ${DateFormat(DateFormat.MONTH).format(dateTime)} ${isYearDifferent ? dateTime.year : ''}';
  }
}
