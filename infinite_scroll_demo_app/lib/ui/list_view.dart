import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/ui/common/snackbars.dart';

class ListViewPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ListViewPage>
    with AutomaticKeepAliveClientMixin<ListViewPage> {
  List<int> _items;

  @override
  void initState() {
    super.initState();
    _items = List.generate(20, (index) => index + 1);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      itemBuilder: _itemBuilder,
    );
  }

  Widget _itemBuilder(BuildContext context, int position) {
    final length = _items?.length ?? 0;
    if (position >= length) {
      _items.addAll(List.generate(10, (index) => _items.length + index + 1));
    }

    return Dismissible(
      key: ObjectKey(_items[position]),
      background: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.centerLeft,
        color: Colors.blue,
        child: Icon(
          Icons.archive,
          color: Colors.white,
        ),
      ),
      secondaryBackground: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.centerRight,
        color: Colors.red,
        child: Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      onDismissed: (direction) {
        _items.removeAt(position);
        if (direction == DismissDirection.startToEnd) {
          Scaffold.of(context).showSnackBar(SnackBars.archivedSnackBar);
          return;
        }
        if (direction == DismissDirection.endToStart) {
          Scaffold.of(context).showSnackBar(SnackBars.deletedSnackBar);
        }
      },
      child: Column(
        children: <Widget>[
          ListTile(
            title: Center(
              child: Text(
                'Row ${_items[position]}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Divider(height: 1),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
