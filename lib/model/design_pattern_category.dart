import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../index.dart';

part 'design_pattern_category.freezed.dart';

@freezed
class DesignPatternCategory with _$DesignPatternCategory {
  const factory DesignPatternCategory({
    @Default('') String title,
    @Default(Colors.red) Color color,
    @Default(<DesignPattern>[]) List<DesignPattern> patterns,
    @Default(DesignPatternType.creational) DesignPatternType type,
  }) = _DesignPatternCategory;
}


enum DesignPatternType {
  creational,
  structural,
  behavioral,
}