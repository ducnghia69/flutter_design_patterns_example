import 'package:flutter/material.dart';
import 'package:flutter_design_patterns_example/common/util/extension.dart';

import '../composite.dart';

class Product implements Component {
  final String name;
  final double price;

  Product({
    required this.name,
    required this.price,
  });

  @override
  double getPrice() {
    return price;
  }

  @override
  String getName() {
    return name;
  }

  @override
  Widget buildItem() {
    return ListTile(
      title: Text(name),
      trailing: Text(price.formatVND()),
    );
  }
}
