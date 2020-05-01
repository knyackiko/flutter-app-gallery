import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  List<int> _items;

  @override
  void initState() {
    super.initState();
    _items = List.generate(20, (index) => index + 1);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemBuilder: _itemBuilder,
    );
  }

  Widget _itemBuilder(BuildContext context, int position) {
    final length = _items?.length ?? 0;
    if (position >= length) {
      _items.addAll(List.generate(20, (index) => length + index + 1));
    }
    return Container(
      color: Colors.purple[100],
      padding: EdgeInsets.all(5),
      child: Text('Item ${_items[position]}'),
    );
  }
}
