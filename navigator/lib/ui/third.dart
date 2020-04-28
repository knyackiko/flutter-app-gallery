import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '3',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            RaisedButton(
              onPressed: () => Navigator.pushNamed(context, '/first'),
              child: Text(
                'Go to First Page!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              color: Colors.black,
              textColor: Colors.amber,
            ),
            RaisedButton(
              onPressed: () =>
                  Navigator.popUntil(context, ModalRoute.withName('/')),
              child: Icon(Icons.home),
              color: Colors.black,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
