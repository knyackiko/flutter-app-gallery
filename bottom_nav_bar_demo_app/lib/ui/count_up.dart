import 'package:bottomnavbardemoapp/model/count_up_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Count Up',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.blueAccent,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 15)),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              Provider.of<CountUpModel>(context).counter.toString(),
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Provider.of<CountUpModel>(context, listen: false).countUp(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
