import 'package:bottomnavbardemoapp/ui/count_down.dart';
import 'package:bottomnavbardemoapp/ui/count_up.dart';
import 'package:bottomnavbardemoapp/ui/home.dart';
import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  ContainerPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _State createState() => _State();
}

class _State extends State<ContainerPage> {
  int _currentIndex;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _currentIndex = 1;
    _pageController = PageController(initialPage: _currentIndex);
  }

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
          onPageChanged: _onBodyPageChanged,
          children: <Widget>[
            CountDownPage(),
            HomePage(),
            CountUpPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onBottomNavigationBarTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.remove_circle_outline),
              title: Text('count down'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              title: Text('count up'),
            )
          ],
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    if (_currentIndex == 1) {
      return true;
    }
    _jumpToPage(1);
    return false;
  }

  void _onBodyPageChanged(int index) {
    setState(() => _currentIndex = index);
  }

  void _onBottomNavigationBarTapped(int index) {
    _jumpToPage(index);
  }

  void _jumpToPage(int index) {
    _pageController.jumpToPage(index);
    setState(() => _currentIndex = index);
  }
}
