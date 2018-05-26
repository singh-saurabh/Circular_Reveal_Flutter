import 'package:flutter/material.dart';
import 'package:circular_reveal_flutter/circular_reveal/circular_reveal.dart';
import 'package:circular_reveal_flutter/first_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int counter=0;
  bool fabPressed = false;

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
        child: new Icon(Icons.ac_unit),
      ),
    );
  }


  returnFinder(){
    if(!fabPressed){
      if (counter==0){
        return FirstPage();
      }
      else {
        return FirstPage(); //change this
      }
    }
    return Circular(counter);
  }

  void fabCounter() {
    setState(() {
      counter=(counter+1) % 2;
    });
  }
}
