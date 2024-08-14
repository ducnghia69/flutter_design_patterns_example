import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../index.dart';

@RoutePage()
class StrategyPage extends StatelessWidget {
  const StrategyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        title: 'Strategy',
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.router.push(const FadeTransitionStrategyRoute());
              },
              child: const Text('Fade Transition'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                context.router.push(const SlideTransitionStrategyRoute());
              },
              child: const Text('Slide Transition'),
            ),
            const SizedBox(
              height: 300,
              child: AutoRouter(),
            ),
          ],
        ),
      ),
    );
  }
}
