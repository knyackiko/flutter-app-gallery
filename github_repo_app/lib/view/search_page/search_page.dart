import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);
  static const routeName = '/search';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('search page')),
    );
  }
}
