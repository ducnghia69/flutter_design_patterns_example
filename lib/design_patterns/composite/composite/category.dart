import 'package:flutter/material.dart';

import '../composite.dart';

class Category implements Component {
  final String name;
  final List<Component> children;

  Category({
    required this.name,
    this.children = const [],
  });

  void add(Component component) {
    children.add(component);
  }

  @override
  double getPrice() {
    return children.fold(0, (prev, element) => prev + element.getPrice());
  }

  @override
  String getName() {
    return name;
  }

  @override
  Widget buildItem() {
    return ExpansionTile(
      title: Text(name),
      initiallyExpanded: true,
      children: children.map((e) => e.buildItem()).toList(),
    );
  }
}
