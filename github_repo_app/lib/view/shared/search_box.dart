import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/const/color.dart';
import 'package:github_repo_app/view/search_page/search_page.dart';
import 'package:github_repo_app/view_model/search_box/search_box_view_model.dart';

class SearchBox extends ConsumerWidget {
  SearchBox({SearchBoxParam? param, Key? key}) : super(key: key) {
    _param = param ?? SearchBoxParam();
  }
  late final SearchBoxParam _param;
  EdgeInsetsGeometry? get _contentPadding {
    switch (_param.height) {
      case SearchBoxHeight.sm:
        return const EdgeInsets.all(9);
      case SearchBoxHeight.lg:
        return const EdgeInsets.all(18);
      case SearchBoxHeight.md:
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return GestureDetector(
      onTap: () {
        if (_param.onTap == null) {
          Navigator.pushNamed(context, SearchPage.routeName);
        } else {
          _param.onTap;
        }
      },
      child: Container(
        width: _param.width,
        height: _param.height.size,
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: IgnorePointer(
          ignoring: !_param.enabled,
          child: TextFormField(
            enabled: _param.enabled,
            autofocus: _param.enabled,
            controller: _param.enabled
                ? watch(searchBoxTextEditingControllerProvider)
                : null,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: AppColors.black,
              ),
              border: InputBorder.none,
              hintText: '検索',
              contentPadding: _contentPadding,
            ),
          ),
        ),
      ),
    );
  }
}

class SearchBoxParam {
  bool enabled;
  double width;
  SearchBoxHeight height;
  void Function()? onTap;

  SearchBoxParam({
    this.enabled = true,
    this.width = 300,
    this.height = SearchBoxHeight.md,
  });
}

enum SearchBoxHeight {
  sm,
  md,
  lg,
}

extension SearchBoxHeightExtension on SearchBoxHeight {
  double get size {
    switch (this) {
      case SearchBoxHeight.sm:
        return 36;
      case SearchBoxHeight.lg:
        return 60;
      case SearchBoxHeight.md:
      default:
        return 48;
    }
  }
}
