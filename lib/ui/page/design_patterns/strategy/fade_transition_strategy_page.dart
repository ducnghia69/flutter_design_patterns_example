import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../index.dart';

@RoutePage()
class FadeTransitionStrategyPage extends StatelessWidget {
  const FadeTransitionStrategyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PrimaryAppBar(
        title: 'Fade Transition Strategy',
      ),
      body: SafeArea(
        child: Center(child: Text('Fade Transition Strategy')),
      ),
    );
  }
}
