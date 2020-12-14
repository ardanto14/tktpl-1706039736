import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count;

  void increase() {
    setState(() {
      if (_count == null) {
        _count = 0;
      }

      _count++;
    });
  }

  void decrease() {
    setState(() {
      if (_count == null) {
        _count = 0;
      }
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_count == null ? "UNCLICKED" : '$_count'),
            FlatButton(onPressed: increase, child: Text('increase')),
            FlatButton(onPressed: decrease, child: Text('decrease'))
          ],
        ),
      ),
    );
  }
}
