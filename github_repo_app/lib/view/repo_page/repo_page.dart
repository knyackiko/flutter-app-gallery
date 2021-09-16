import 'package:flutter/material.dart';

class RepoPage extends StatelessWidget {
  const RepoPage({Key? key}) : super(key: key);
  static const routeName = '/repo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('repoPage'),
      ),
      body: const Text('repoPage'),
    );
  }
}
