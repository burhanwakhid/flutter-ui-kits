import 'package:flutter/material.dart';

class MyCustomRoute extends PageRouteBuilder {
  final Widget? widget;
  MyCustomRoute({this.widget})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget!;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return ScaleTransition(
              scale: Tween<double>(
                begin: 0.0,
                end: 1.0,
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Interval(
                    0.00,
                    0.80,
                    curve: Curves.bounceIn,
                  ),
                ),
              ),
              child: ScaleTransition(
                scale: Tween<double>(
                  begin: 1.5,
                  end: 1.0,
                ).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve: Interval(
                      0.50,
                      1.00,
                      curve: Curves.easeIn,
                    ),
                  ),
                ),
                child: child,
              ),
            );
          },
        );
}
