import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:circular_reveal_flutter/home_page.dart';
import 'package:circular_reveal_flutter/second_page.dart';
import 'package:circular_reveal_flutter/first_page.dart';


class Navigation {
  static Router router;

  static void initPaths() {
    router = Router()
      ..define('/', handler: Handler(
          handlerFunc: (BuildContext context, Map<String, dynamic> params) {
        return MyHomePage(title: 'Progress Button');
      }))
      ..define('second_page', handler: Handler(
          handlerFunc: (BuildContext context, Map<String, dynamic> params) {
        return SecondPage(title: 'Second Page');
      }))
      ..define('first_page', handler: Handler(
          handlerFunc: (BuildContext context, Map<String, dynamic> params) {
            return FirstPage(title: 'First Page');
          }))
    ;
  }

  static void navigateTo(
    BuildContext context,
    String path, {
    bool replace = false,
    TransitionType transition = TransitionType.native,
    Duration transitionDuration = const Duration(milliseconds: 250),
    RouteTransitionsBuilder transitionBuilder,
  }) {
    router.navigateTo(
      context,
      path,
      replace: replace,
      transition: transition,
      transitionDuration: transitionDuration,
      transitionBuilder: transitionBuilder,
    );
  }
}
