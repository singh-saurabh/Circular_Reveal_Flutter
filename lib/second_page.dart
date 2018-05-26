import 'package:flutter/material.dart';


class SecondPage extends StatefulWidget{
  final String title;

  SecondPage({Key key, this.title}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
    new SecondPageState();
  }
}

class SecondPageState extends State<SecondPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(),
      backgroundColor: Colors.blue,
    );
  }

}