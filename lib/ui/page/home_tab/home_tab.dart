import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_patterns_example/common/util/extension.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../index.dart';

@RoutePage()
class HomeTabPage extends HookConsumerWidget {
  const HomeTabPage({
    super.key,
    required this.category,
  });

  final DesignPatternCategory category;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: category.color,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: category.patterns
                .map(
                  (pattern) => _buildDesignPatternCard(
                    context,
                    pattern: pattern,
                    type: category.type,
                  ),
                )
                .toList()
                .separated(
                  const SizedBox(height: 20),
                ),
          ),
        ),
      ),
    );
  }

  Widget _buildDesignPatternCard(
    BuildContext context, {
    required DesignPattern pattern,
    required DesignPatternType type,
  }) {
    return CommonAnimationButton(
      onTap: () {
        final route = pattern.route;
        if (route != null) {
          context.router.push(route);
        }
      },
      title: pattern.title,
    );
  }
}
