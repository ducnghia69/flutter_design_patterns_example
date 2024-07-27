import 'package:flutter/material.dart';

abstract class Component {
  String getName();

  double getPrice();

  Widget buildItem();
}
