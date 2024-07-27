import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../design_patterns/composite/composite.dart';
import '../../../../index.dart';

@RoutePage()
class CompositePage extends StatelessWidget {
  const CompositePage({super.key});

  @override
  Widget build(BuildContext context) {
    final components = ComponentDataSource.categories;

    return Scaffold(
        appBar: const PrimaryAppBar(
          title: 'Composite',
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Giỏ hàng',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  ...components.map((category) {
                    return category.buildItem();
                  }),
                  const Divider(),
                ],
              ),
            ),
          ),
        ),
        bottomSheet: Container(
          padding: const EdgeInsets.all(16),
          width: double.maxFinite,
          child: Text('Tổng tiền: ${components.getTotalPriceFormatted()}'),
        ));
  }
}
