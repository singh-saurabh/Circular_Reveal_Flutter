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

  int counter=1;
  bool fabPressed = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        alignment: Alignment.bottomRight,
        child: returnFinder(),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: fabCounter,
        child: new Icon(Icons.crop_square),
      ),
    );
  }


  returnFinder(){
    if(fabPressed){
      if (counter==0){
        setState(() {
          fabPressed = false;

        });
        return Circular(0);
      }
      else {
        setState(() {
          fabPressed = false;

        });
        return Circular(1); //change this
      }
    }
    return null;
  }

  void fabCounter() {
    setState(() {
      fabPressed = true;
      counter=(counter+1) % 2;
    });
  }
}
