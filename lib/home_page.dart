import 'package:flutter/material.dart';
import 'package:circular_reveal_flutter/circular_reveal/circular_reveal.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  final Function callback;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int counter=0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        alignment: Alignment.bottomRight,
        child: Circular(0),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: fabCounter,
        child: new Icon(Icons.add),
      ),
    );
  }


  void fabCounter() {
    setState(() {
      counter=(counter+1) % 2;
    });
  }
}
