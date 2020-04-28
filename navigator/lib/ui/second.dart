import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '2',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            RaisedButton(
              onPressed: () => Navigator.pushNamed(context, '/third'),
              child: Text(
                'Go to Third Page!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              color: Colors.black,
              textColor: Colors.pink,
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
