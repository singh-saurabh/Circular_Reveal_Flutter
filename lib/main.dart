import 'package:flutter/material.dart';
import 'package:circular_reveal_flutter/navigation.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  MyApp() {
    Navigation.initPaths();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Navigation.router.generator,
    );
  }
}
