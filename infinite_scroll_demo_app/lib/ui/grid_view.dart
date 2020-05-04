import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/entity/post.dart';
import 'package:infinitescrolldemoapp/ui/post_detail.dart';

class GridViewPage extends StatefulWidget {
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage>
    with AutomaticKeepAliveClientMixin<GridViewPage> {
  List<PostEntity> _posts;

  @override
  void initState() {
    super.initState();
    _posts = posts;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
      ),
      itemBuilder: _itemBuilder,
    );
  }

  Widget _itemBuilder(BuildContext context, int position) {
    final length = _posts?.length ?? 0;
    if (position >= length) {
      _posts.addAll(posts.take(posts.length));
    }

    final post = _posts[position];
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, PictureDetailPage.routeName,
          arguments: PictureDetailArguments(post: post)),
      child: GridTile(
        header: _buildHeader(post),
        child: Image.asset(post.picture.path),
      ),
    );
  }

  Widget _buildHeader(PostEntity post) {
    if (post.hasProduct) {
      return Align(
        alignment: Alignment.centerRight,
        child: Icon(
          Icons.shopping_basket,
          size: 18,
          color: Colors.white,
        ),
      );
    }

    return post.isMultiple
        ? Align(
            alignment: Alignment.centerRight,
            child: Icon(
              Icons.photo_library,
              size: 18,
              color: Colors.white,
            ),
          )
        : Container();
  }

  @override
  bool get wantKeepAlive => true;
}
