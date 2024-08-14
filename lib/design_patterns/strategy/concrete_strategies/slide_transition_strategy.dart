import 'package:flutter/widgets.dart';

import '../strategy.dart';

class SlideTransitionStrategy implements PageTransitionStrategy {
  @override
  RouteTransitionsBuilder routeTransitionsBuilder() {
    return (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1.0, 0.0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    };
  }
}
