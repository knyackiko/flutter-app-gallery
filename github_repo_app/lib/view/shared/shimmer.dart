import 'package:flutter/material.dart';
import 'package:github_repo_app/const/color.dart';
import 'package:shimmer/shimmer.dart';

class AppShimmer extends StatelessWidget {
  const AppShimmer({required this.child, Key? key}) : super(key: key);
  final Widget child;
  static final Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: child,
      baseColor: AppColors.lightGrey,
      highlightColor: AppColors.white,
    );
  }
}
