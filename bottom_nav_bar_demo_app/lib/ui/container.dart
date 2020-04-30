import 'package:bottomnavbardemoapp/model/container_model.dart';
import 'package:bottomnavbardemoapp/ui/count_down.dart';
import 'package:bottomnavbardemoapp/ui/count_up.dart';
import 'package:bottomnavbardemoapp/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContainerPage extends StatelessWidget {
  ContainerPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final containerModel = Provider.of<ContainerModel>(context, listen: false);

    return WillPopScope(
      onWillPop: () => _onWillPop(containerModel),
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: PageView(
          controller: containerModel.pageController,
          onPageChanged: containerModel.updateCurrentPage,
          children: <Widget>[
            CountDownPage(),
            HomePage(),
            CountUpPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: Provider.of<ContainerModel>(context).currentPage,
          onTap: (page) => _onBottomNavigationBarTapped(page, containerModel),
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

  Future<bool> _onWillPop(ContainerModel model) async {
    if (model.currentPage == model.initialPage) {
      return true;
    }

    _jumpToPage(model.initialPage, model);
    return false;
  }

  _onBottomNavigationBarTapped(int page, ContainerModel model) {
    _jumpToPage(page, model);
  }

  _jumpToPage(int page, ContainerModel model) {
    model.updateCurrentPage(page);
    model.pageController.jumpToPage(page);
  }
}
