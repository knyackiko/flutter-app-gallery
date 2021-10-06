import 'package:flutter/material.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);
  static const routeName = '/search-result';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Result Page'),
      ),
      body: const Center(
        child: Text('Search Result Page'),
      ),
    );
  }
}
