import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/type/picture.dart';

class GridViewPage extends StatefulWidget {
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  List<Picture> _pictures;

  @override
  void initState() {
    super.initState();
    _pictures = pictures;
  }

  @override
  Widget build(BuildContext context) {
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
    final length = _pictures?.length ?? 0;
    if (position >= length) {
      _pictures.addAll(pictures.take(pictures.length));
    }

    final pic = _pictures[position];
    return GridTile(
      header: _buildHeader(pic),
      child: Image.asset('${pic.path}'),
    );
  }

  Widget _buildHeader(Picture picture) {
    if (picture.hasProduct) {
      return Align(
        alignment: Alignment.centerRight,
        child: Icon(
          Icons.shopping_basket,
          size: 18,
          color: Colors.white,
        ),
      );
    }

    return picture.isMultiple
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
}
