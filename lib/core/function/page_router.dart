import 'package:flutter/material.dart';

class CustomPageRoute<T> extends PageRoute<T> {

  final Widget child;

  CustomPageRoute(this.child);

  @override
  Color get barrierColor => Colors.white;

  @override
  String get barrierLabel => '';

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(seconds: 1);

  @override
  Widget buildPage(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation
      ) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}