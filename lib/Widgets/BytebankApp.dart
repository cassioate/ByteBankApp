import 'package:flutter/material.dart';

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dash'),
        ),
        body: Column(
          children: <Widget>[
            Image.asset('./lib/assets/bytebank_logo.png'),
            Container(
              height: 120,
              width: 100,
              color: Colors.green,
              child: Column(
                children: [
                  Icon(Icons.people),
                  Text(''),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
