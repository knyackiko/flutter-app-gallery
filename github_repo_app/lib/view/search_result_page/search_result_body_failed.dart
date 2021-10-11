import 'package:flutter/material.dart';
import 'package:github_repo_app/view/shared/scroll_view.dart';

class SearchResultBodyFailed extends StatelessWidget {
  const SearchResultBodyFailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppScrollView(
      child: Center(
        child: Text(
          '問題が起きました。\n再度お試しください。',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
