// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'design_pattern_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DesignPatternCategory {
  String get title => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  List<DesignPattern> get patterns => throw _privateConstructorUsedError;
  DesignPatternType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DesignPatternCategoryCopyWith<DesignPatternCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignPatternCategoryCopyWith<$Res> {
  factory $DesignPatternCategoryCopyWith(DesignPatternCategory value,
          $Res Function(DesignPatternCategory) then) =
      _$DesignPatternCategoryCopyWithImpl<$Res, DesignPatternCategory>;
  @useResult
  $Res call(
      {String title,
      Color color,
      List<DesignPattern> patterns,
      DesignPatternType type});
}

/// @nodoc
class _$DesignPatternCategoryCopyWithImpl<$Res,
        $Val extends DesignPatternCategory>
    implements $DesignPatternCategoryCopyWith<$Res> {
  _$DesignPatternCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? color = null,
    Object? patterns = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      patterns: null == patterns
          ? _value.patterns
          : patterns // ignore: cast_nullable_to_non_nullable
              as List<DesignPattern>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DesignPatternType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DesignPatternCategoryImplCopyWith<$Res>
    implements $DesignPatternCategoryCopyWith<$Res> {
  factory _$$DesignPatternCategoryImplCopyWith(
          _$DesignPatternCategoryImpl value,
          $Res Function(_$DesignPatternCategoryImpl) then) =
      __$$DesignPatternCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      Color color,
      List<DesignPattern> patterns,
      DesignPatternType type});
}

/// @nodoc
class __$$DesignPatternCategoryImplCopyWithImpl<$Res>
    extends _$DesignPatternCategoryCopyWithImpl<$Res,
        _$DesignPatternCategoryImpl>
    implements _$$DesignPatternCategoryImplCopyWith<$Res> {
  __$$DesignPatternCategoryImplCopyWithImpl(_$DesignPatternCategoryImpl _value,
      $Res Function(_$DesignPatternCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? color = null,
    Object? patterns = null,
    Object? type = null,
  }) {
    return _then(_$DesignPatternCategoryImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      patterns: null == patterns
          ? _value._patterns
          : patterns // ignore: cast_nullable_to_non_nullable
              as List<DesignPattern>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DesignPatternType,
    ));
  }
}

/// @nodoc

class _$DesignPatternCategoryImpl implements _DesignPatternCategory {
  const _$DesignPatternCategoryImpl(
      {this.title = '',
      this.color = Colors.red,
      final List<DesignPattern> patterns = const <DesignPattern>[],
      this.type = DesignPatternType.creational})
      : _patterns = patterns;

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final Color color;
  final List<DesignPattern> _patterns;
  @override
  @JsonKey()
  List<DesignPattern> get patterns {
    if (_patterns is EqualUnmodifiableListView) return _patterns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patterns);
  }

  @override
  @JsonKey()
  final DesignPatternType type;

  @override
  String toString() {
    return 'DesignPatternCategory(title: $title, color: $color, patterns: $patterns, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DesignPatternCategoryImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._patterns, _patterns) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, color,
      const DeepCollectionEquality().hash(_patterns), type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DesignPatternCategoryImplCopyWith<_$DesignPatternCategoryImpl>
      get copyWith => __$$DesignPatternCategoryImplCopyWithImpl<
          _$DesignPatternCategoryImpl>(this, _$identity);
}

abstract class _DesignPatternCategory implements DesignPatternCategory {
  const factory _DesignPatternCategory(
      {final String title,
      final Color color,
      final List<DesignPattern> patterns,
      final DesignPatternType type}) = _$DesignPatternCategoryImpl;

  @override
  String get title;
  @override
  Color get color;
  @override
  List<DesignPattern> get patterns;
  @override
  DesignPatternType get type;
  @override
  @JsonKey(ignore: true)
  _$$DesignPatternCategoryImplCopyWith<_$DesignPatternCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
