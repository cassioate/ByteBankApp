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
            Image.network(
                'https://cdn.pixabay.com/photo/2019/10/15/06/03/pinwheel-4550711_960_720.jpg'),
          ],
        ),
      ),
    );
  }
}
