import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/model/repository/data_source/db/table/favorite_repo.dart';
import 'package:github_repo_app/view/repo_page/favorite_button.dart';
import 'package:github_repo_app/view/repo_page/web_view_failed_body.dart';
import 'package:github_repo_app/view/shared/app_bar_with_progress_bar.dart';
import 'package:github_repo_app/view_model/repo_page/repo_page_view_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RepoPage extends ConsumerWidget {
  const RepoPage({Key? key}) : super(key: key);
  static const routeName = '/repo';

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final repoPageViewModel = watch(repoPageViewModelProvider.notifier);
    final repoPageState = watch(repoPageViewModelProvider);

    return Scaffold(
      appBar: AppBarWithProgressBar(
        appBar: AppBar(
          title: Text(repoPageState.repo!.name),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => debugPrint('Jump to GitHub App'),
              icon: const Icon(Icons.launch),
            ),
          ],
        ),
        linearProgressIndicator: LinearProgressIndicator(
          value: repoPageState.progress / 100,
        ),
      ),
      body: Stack(
        children: [
          Visibility(
            visible: repoPageState.error == null,
            replacement: const WebViewFailedBody(),
            child: WebView(
              initialUrl: repoPageState.repo!.htmlUrl,
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) =>
                  repoPageViewModel.updateWebViewController(webViewController),
              onProgress: (int progress) =>
                  repoPageViewModel.updateProgress(progress),
              onPageStarted: (url) => repoPageViewModel.updateError(null),
              onWebResourceError: (error) =>
                  repoPageViewModel.updateError(error),
            ),
          ),
        ],
      ),
      floatingActionButton: const FavoriteButton(),
    );
  }
}

class RepoPageArguments {
  final FavoriteRepo repo;

  RepoPageArguments(this.repo);
}
