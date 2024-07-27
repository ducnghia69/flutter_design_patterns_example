import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../index.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final creationalData = AppDataSource.dpCreationalCategory;
    final structualData = AppDataSource.dpStructuralCategory;
    final behavioralData = AppDataSource.dpBehavioralCategory;

    return AutoTabsScaffold(
      routes: [
        CreationalHomeTab(children: [HomeTabRoute(category: creationalData)]),
        StructuralHomeTab(children: [HomeTabRoute(category: structualData)]),
        BehavioralHomeTab(children: [HomeTabRoute(category: behavioralData)]),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);

              context.router.popUntilRoot();
            },
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: cl.grey,
            selectedItemColor: cl.black,
            type: BottomNavigationBarType.fixed,
            backgroundColor: cl.white,
            items: [
              _buildNavigationBarItem(
                category: AppDataSource.dpCreationalCategory,
                icon: Icons.add_circle_outline_rounded,
              ),
              _buildNavigationBarItem(
                category: AppDataSource.dpStructuralCategory,
                icon: Icons.data_array_outlined,
              ),
              _buildNavigationBarItem(
                category: AppDataSource.dpBehavioralCategory,
                icon: Icons.accessibility_new_rounded,
              ),
            ]);
      },
    );
  }

  BottomNavigationBarItem _buildNavigationBarItem({
    required DesignPatternCategory category,
    required IconData icon,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      backgroundColor: category.color,
      label: category.title,
    );
  }
}
