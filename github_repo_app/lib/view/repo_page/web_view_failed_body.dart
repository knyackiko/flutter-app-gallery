import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/view_model/repo_page/repo_page_view_model.dart';

class WebViewFailedBody extends ConsumerWidget {
  const WebViewFailedBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final repoPageViewModel = watch(repoPageViewModelProvider.notifier);

    return ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '表示に失敗しました。\n再度読み込んでください。',
            textAlign: TextAlign.center,
          ),
          IconButton(
            onPressed: () => repoPageViewModel.reload(),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
