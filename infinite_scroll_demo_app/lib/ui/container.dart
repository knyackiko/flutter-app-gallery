import 'package:flutter/material.dart';
import 'package:infinitescrolldemoapp/ui/grid_view.dart';
import 'package:infinitescrolldemoapp/ui/list_view.dart';

class ContainerPage extends StatefulWidget {
  static const routeName = '/container';
  ContainerPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  static final int _initialPage = 0;
  PageController _pageController = PageController(initialPage: _initialPage);
  int _page = _initialPage;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: PageView(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            ListViewPage(),
            GridViewPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _page,
          onTap: _jumpToPage,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.list), title: Text('ListView')),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_on), title: Text('GridView')),
          ],
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    if (_page == _initialPage) {
      return true;
    }
    _jumpToPage(_initialPage);
    return false;
  }

  void _jumpToPage(int page) {
    setState(() => _page = page);
    _pageController.jumpToPage(page);
  }
}
