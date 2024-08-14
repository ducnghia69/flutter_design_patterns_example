import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../index.dart';

@RoutePage()
class SlideTransitionStrategyPage extends StatelessWidget {
  const SlideTransitionStrategyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PrimaryAppBar(
        title: 'Slide Transition Strategy',
      ),
      body: SafeArea(
        child: Center(child: Text('Slide Transition Strategy')),
      ),
    );
  }
}
