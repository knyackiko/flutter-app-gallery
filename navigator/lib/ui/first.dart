import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '1',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            RaisedButton(
              onPressed: () => Navigator.pushNamed(context, '/second'),
              child: Text(
                'Go to Second Page!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              color: Colors.black,
              textColor: Colors.blue,
            ),
            RaisedButton(
              // onPressed: () =>
              //     Navigator.popUntil(context, ModalRoute.withName('/')),
              onPressed: () => Navigator.of(context, rootNavigator: true)
                  .popUntil(ModalRoute.withName(('/'))),
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
