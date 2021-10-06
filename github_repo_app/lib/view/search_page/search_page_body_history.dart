import 'package:flutter/material.dart';

class SearchPageBodyHistory extends StatelessWidget {
  const SearchPageBodyHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Find your stuff.',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Text(
              'Search all of GitHub for People, Repositories, Organizations, Issues, and Pull Requests.',
              style: Theme.of(context).textTheme.caption,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
