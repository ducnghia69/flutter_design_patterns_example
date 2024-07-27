// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'design_pattern.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DesignPattern {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  PageRouteInfo<dynamic>? get route => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DesignPatternCopyWith<DesignPattern> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignPatternCopyWith<$Res> {
  factory $DesignPatternCopyWith(
          DesignPattern value, $Res Function(DesignPattern) then) =
      _$DesignPatternCopyWithImpl<$Res, DesignPattern>;
  @useResult
  $Res call({String title, String description, PageRouteInfo<dynamic>? route});
}

/// @nodoc
class _$DesignPatternCopyWithImpl<$Res, $Val extends DesignPattern>
    implements $DesignPatternCopyWith<$Res> {
  _$DesignPatternCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? route = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DesignPatternImplCopyWith<$Res>
    implements $DesignPatternCopyWith<$Res> {
  factory _$$DesignPatternImplCopyWith(
          _$DesignPatternImpl value, $Res Function(_$DesignPatternImpl) then) =
      __$$DesignPatternImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, PageRouteInfo<dynamic>? route});
}

/// @nodoc
class __$$DesignPatternImplCopyWithImpl<$Res>
    extends _$DesignPatternCopyWithImpl<$Res, _$DesignPatternImpl>
    implements _$$DesignPatternImplCopyWith<$Res> {
  __$$DesignPatternImplCopyWithImpl(
      _$DesignPatternImpl _value, $Res Function(_$DesignPatternImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? route = freezed,
  }) {
    return _then(_$DesignPatternImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<dynamic>?,
    ));
  }
}

/// @nodoc

class _$DesignPatternImpl implements _DesignPattern {
  const _$DesignPatternImpl(
      {required this.title, required this.description, this.route});

  @override
  final String title;
  @override
  final String description;
  @override
  final PageRouteInfo<dynamic>? route;

  @override
  String toString() {
    return 'DesignPattern(title: $title, description: $description, route: $route)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DesignPatternImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.route, route) || other.route == route));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, route);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DesignPatternImplCopyWith<_$DesignPatternImpl> get copyWith =>
      __$$DesignPatternImplCopyWithImpl<_$DesignPatternImpl>(this, _$identity);
}

abstract class _DesignPattern implements DesignPattern {
  const factory _DesignPattern(
      {required final String title,
      required final String description,
      final PageRouteInfo<dynamic>? route}) = _$DesignPatternImpl;

  @override
  String get title;
  @override
  String get description;
  @override
  PageRouteInfo<dynamic>? get route;
  @override
  @JsonKey(ignore: true)
  _$$DesignPatternImplCopyWith<_$DesignPatternImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
