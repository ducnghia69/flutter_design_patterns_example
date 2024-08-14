import 'package:auto_route/auto_route.dart';

import '../strategy.dart';

class RouteTypeContext {
  final PageTransitionStrategy transitionStrategy;

  RouteTypeContext({
    required this.transitionStrategy,
  });

  RouteType routeType() {
    return RouteType.custom(
      transitionsBuilder: ((context, animation, secondaryAnimation, child) =>
          transitionStrategy.routeTransitionsBuilder()(
            context,
            animation,
            secondaryAnimation,
            child,
          )),
    );
  }
}
