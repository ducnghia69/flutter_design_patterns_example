import 'package:flutter/material.dart';

import '../strategy.dart';

class FadeTransitionStrategy implements PageTransitionStrategy {
  @override
  RouteTransitionsBuilder routeTransitionsBuilder() {
    return (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    };
  }
}
