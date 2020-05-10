import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/ui/common/snackbars.dart';

class ListViewPage extends StatefulWidget {
  final listViewPageController;

  ListViewPage(this.listViewPageController);

  @override
  _State createState() => _State();
}

class _State extends State<ListViewPage>
    with AutomaticKeepAliveClientMixin<ListViewPage> {
  List<int> _items;

  @override
  void initState() {
    super.initState();
    _initItems();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return RefreshIndicator(
      displacement: 20,
      onRefresh: _onRefresh,
      child: ListView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        itemBuilder: _itemBuilder,
        controller: widget.listViewPageController,
      ),
    );
  }

  void _initItems() {
    _items = List.generate(20, (i) => i + 1);
  }

  Future<void> _onRefresh() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _initItems();
    });
  }

  Widget _itemBuilder(BuildContext context, int index) {
    final length = _items?.length ?? 0;
    if (index >= length) {
      _items.addAll(List.generate(10, (i) => length + i + 1));
    }

    return Dismissible(
      key: UniqueKey(),
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
        setState(() {
          _items.removeAt(index);
        });
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
                'Row ${_items[index]}',
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
