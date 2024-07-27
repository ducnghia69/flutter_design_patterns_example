import 'package:auto_route/auto_route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'design_pattern.freezed.dart';

@freezed
class DesignPattern with _$DesignPattern {
  const factory DesignPattern({
    required String title,
    required String description,
    PageRouteInfo? route,
  }) = _DesignPattern;
}
