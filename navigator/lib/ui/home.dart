import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.home),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontSize: 26),
            ),
            Padding(padding: EdgeInsets.only(bottom: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () => Navigator.pushNamed(context, '/first'),
                  child: Text(
                    '1',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  color: Colors.black,
                  textColor: Colors.amber,
                ),
                Padding(padding: EdgeInsets.only(right: 5)),
                RaisedButton(
                  onPressed: () => Navigator.pushNamed(context, '/second'),
                  child: Text(
                    '2',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  color: Colors.black,
                  textColor: Colors.blue,
                ),
                Padding(padding: EdgeInsets.only(right: 5)),
                RaisedButton(
                  onPressed: () => Navigator.pushNamed(context, '/third'),
                  child: Text(
                    '3',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  color: Colors.black,
                  textColor: Colors.pink,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
