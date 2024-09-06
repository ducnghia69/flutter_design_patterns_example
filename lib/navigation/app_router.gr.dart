// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AdapterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdapterPage(),
      );
    },
    BehavioralHomeTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BehavioralHomeTabPage(),
      );
    },
    CompositeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CompositePage(),
      );
    },
    CreationalHomeTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreationalHomeTabPage(),
      );
    },
    FadeTransitionStrategyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FadeTransitionStrategyPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    HomeTabRoute.name: (routeData) {
      final args = routeData.argsAs<HomeTabRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeTabPage(
          key: args.key,
          category: args.category,
        ),
      );
    },
    SlideTransitionStrategyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SlideTransitionStrategyPage(),
      );
    },
    StateRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StatePage(),
      );
    },
    StrategyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StrategyPage(),
      );
    },
    StructuralHomeTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StructuralHomeTabPage(),
      );
    },
    TemplateMethodRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TemplateMethodPage(),
      );
    },
  };
}

/// generated route for
/// [AdapterPage]
class AdapterRoute extends PageRouteInfo<void> {
  const AdapterRoute({List<PageRouteInfo>? children})
      : super(
          AdapterRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdapterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BehavioralHomeTabPage]
class BehavioralHomeTab extends PageRouteInfo<void> {
  const BehavioralHomeTab({List<PageRouteInfo>? children})
      : super(
          BehavioralHomeTab.name,
          initialChildren: children,
        );

  static const String name = 'BehavioralHomeTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CompositePage]
class CompositeRoute extends PageRouteInfo<void> {
  const CompositeRoute({List<PageRouteInfo>? children})
      : super(
          CompositeRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompositeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CreationalHomeTabPage]
class CreationalHomeTab extends PageRouteInfo<void> {
  const CreationalHomeTab({List<PageRouteInfo>? children})
      : super(
          CreationalHomeTab.name,
          initialChildren: children,
        );

  static const String name = 'CreationalHomeTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FadeTransitionStrategyPage]
class FadeTransitionStrategyRoute extends PageRouteInfo<void> {
  const FadeTransitionStrategyRoute({List<PageRouteInfo>? children})
      : super(
          FadeTransitionStrategyRoute.name,
          initialChildren: children,
        );

  static const String name = 'FadeTransitionStrategyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeTabPage]
class HomeTabRoute extends PageRouteInfo<HomeTabRouteArgs> {
  HomeTabRoute({
    Key? key,
    required DesignPatternCategory category,
    List<PageRouteInfo>? children,
  }) : super(
          HomeTabRoute.name,
          args: HomeTabRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeTabRoute';

  static const PageInfo<HomeTabRouteArgs> page =
      PageInfo<HomeTabRouteArgs>(name);
}

class HomeTabRouteArgs {
  const HomeTabRouteArgs({
    this.key,
    required this.category,
  });

  final Key? key;

  final DesignPatternCategory category;

  @override
  String toString() {
    return 'HomeTabRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [SlideTransitionStrategyPage]
class SlideTransitionStrategyRoute extends PageRouteInfo<void> {
  const SlideTransitionStrategyRoute({List<PageRouteInfo>? children})
      : super(
          SlideTransitionStrategyRoute.name,
          initialChildren: children,
        );

  static const String name = 'SlideTransitionStrategyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StatePage]
class StateRoute extends PageRouteInfo<void> {
  const StateRoute({List<PageRouteInfo>? children})
      : super(
          StateRoute.name,
          initialChildren: children,
        );

  static const String name = 'StateRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StrategyPage]
class StrategyRoute extends PageRouteInfo<void> {
  const StrategyRoute({List<PageRouteInfo>? children})
      : super(
          StrategyRoute.name,
          initialChildren: children,
        );

  static const String name = 'StrategyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StructuralHomeTabPage]
class StructuralHomeTab extends PageRouteInfo<void> {
  const StructuralHomeTab({List<PageRouteInfo>? children})
      : super(
          StructuralHomeTab.name,
          initialChildren: children,
        );

  static const String name = 'StructuralHomeTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TemplateMethodPage]
class TemplateMethodRoute extends PageRouteInfo<void> {
  const TemplateMethodRoute({List<PageRouteInfo>? children})
      : super(
          TemplateMethodRoute.name,
          initialChildren: children,
        );

  static const String name = 'TemplateMethodRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
