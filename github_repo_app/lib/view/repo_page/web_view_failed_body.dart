import 'package:flutter/material.dart';

class WebViewFailedBody extends StatelessWidget {
  const WebViewFailedBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            onPressed: () => debugPrint('refresh'),
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
    );
  }
}
