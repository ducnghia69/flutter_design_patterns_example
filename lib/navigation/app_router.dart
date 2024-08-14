import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_patterns_example/ui/page/home_tab/home_tab.dart';
import 'package:injectable/injectable.dart';
import '../index.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
@LazySingleton()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes {
    final fadeTransition = RouteTypeContext(transitionStrategy: FadeTransitionStrategy());
    final slideTransition = RouteTypeContext(transitionStrategy: SlideTransitionStrategy());

    return [
      AutoRoute(
        page: HomeRoute.page,
        initial: true,
        children: [
          AutoRoute(
            page: CreationalHomeTab.page,
            maintainState: true,
            children: [
              AutoRoute(page: HomeTabRoute.page, initial: true),
            ],
          ),
          AutoRoute(
            page: StructuralHomeTab.page,
            maintainState: true,
            children: [
              AutoRoute(page: HomeTabRoute.page, initial: true),
              AutoRoute(page: AdapterRoute.page),
              AutoRoute(page: CompositeRoute.page),
            ],
          ),
          AutoRoute(
            page: BehavioralHomeTab.page,
            maintainState: true,
            children: [
              AutoRoute(page: HomeTabRoute.page, initial: true),
              AutoRoute(page: TemplateMethodRoute.page),
              AutoRoute(
                page: StrategyRoute.page,
                children: [
                  AutoRoute(
                    type: fadeTransition.routeType(),
                    page: FadeTransitionStrategyRoute.page,
                    initial: true,
                  ),
                  AutoRoute(
                    type: slideTransition.routeType(),
                    page: SlideTransitionStrategyRoute.page,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ];
  }
}

@RoutePage(name: 'CreationalHomeTab')
class CreationalHomeTabPage extends AutoRouter {
  const CreationalHomeTabPage({super.key});
}

@RoutePage(name: 'StructuralHomeTab')
class StructuralHomeTabPage extends AutoRouter {
  const StructuralHomeTabPage({super.key});
}

@RoutePage(name: 'BehavioralHomeTab')
class BehavioralHomeTabPage extends AutoRouter {
  const BehavioralHomeTabPage({super.key});
}
