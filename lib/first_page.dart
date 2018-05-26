import 'package:flutter/material.dart';


class FirstPage extends StatefulWidget{
  final String title;
  FirstPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    new FirstPageState();
  }
}

class FirstPageState extends State<FirstPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(
          'Hey',
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

}