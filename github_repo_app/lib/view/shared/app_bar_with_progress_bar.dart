import 'package:flutter/material.dart';

class AppBarWithProgressBar extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarWithProgressBar({
    Key? key,
    required this.appBar,
    required this.linearProgressIndicator,
  }) : super(key: key);

  final AppBar appBar;
  final LinearProgressIndicator linearProgressIndicator;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        appBar,
        AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: linearProgressIndicator.value == 1.0 ? 0.0 : 1.0,
          child: LinearProgressIndicator(
            key: linearProgressIndicator.key,
            backgroundColor: linearProgressIndicator.color ?? Colors.grey,
            color: linearProgressIndicator.color ?? Colors.pink,
            valueColor: linearProgressIndicator.valueColor,
            value: linearProgressIndicator.value,
            minHeight: linearProgressIndicator.minHeight,
            semanticsLabel: linearProgressIndicator.semanticsLabel,
            semanticsValue: linearProgressIndicator.semanticsValue,
          ),
        )
      ],
      alignment: Alignment.bottomLeft,
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, appBar.preferredSize.height);
}
