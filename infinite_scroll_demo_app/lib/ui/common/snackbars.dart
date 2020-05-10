import 'package:flutter/material.dart';

class SnackBars {
  static final archivedSnackBar = SnackBar(
    content: Text('Archived!'),
    duration: Duration(seconds: 1),
  );

  static final deletedSnackBar = SnackBar(
    content: Text('Deleted!'),
    duration: Duration(seconds: 1),
  );
}
