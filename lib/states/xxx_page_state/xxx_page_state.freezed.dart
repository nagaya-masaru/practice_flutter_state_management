// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'xxx_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

XxxPageState _$XxxPageStateFromJson(Map<String, dynamic> json) {
  return _XxxPageState.fromJson(json);
}

/// @nodoc
mixin _$XxxPageState {
  String get name => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  double get musicVolume => throw _privateConstructorUsedError;
  int get timerCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $XxxPageStateCopyWith<XxxPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XxxPageStateCopyWith<$Res> {
  factory $XxxPageStateCopyWith(
          XxxPageState value, $Res Function(XxxPageState) then) =
      _$XxxPageStateCopyWithImpl<$Res, XxxPageState>;
  @useResult
  $Res call(
      {String name,
      int count,
      bool isLoading,
      double musicVolume,
      int timerCount});
}

/// @nodoc
class _$XxxPageStateCopyWithImpl<$Res, $Val extends XxxPageState>
    implements $XxxPageStateCopyWith<$Res> {
  _$XxxPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
    Object? isLoading = null,
    Object? musicVolume = null,
    Object? timerCount = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      musicVolume: null == musicVolume
          ? _value.musicVolume
          : musicVolume // ignore: cast_nullable_to_non_nullable
              as double,
      timerCount: null == timerCount
          ? _value.timerCount
          : timerCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_XxxPageStateCopyWith<$Res>
    implements $XxxPageStateCopyWith<$Res> {
  factory _$$_XxxPageStateCopyWith(
          _$_XxxPageState value, $Res Function(_$_XxxPageState) then) =
      __$$_XxxPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int count,
      bool isLoading,
      double musicVolume,
      int timerCount});
}

/// @nodoc
class __$$_XxxPageStateCopyWithImpl<$Res>
    extends _$XxxPageStateCopyWithImpl<$Res, _$_XxxPageState>
    implements _$$_XxxPageStateCopyWith<$Res> {
  __$$_XxxPageStateCopyWithImpl(
      _$_XxxPageState _value, $Res Function(_$_XxxPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
    Object? isLoading = null,
    Object? musicVolume = null,
    Object? timerCount = null,
  }) {
    return _then(_$_XxxPageState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      musicVolume: null == musicVolume
          ? _value.musicVolume
          : musicVolume // ignore: cast_nullable_to_non_nullable
              as double,
      timerCount: null == timerCount
          ? _value.timerCount
          : timerCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_XxxPageState with DiagnosticableTreeMixin implements _XxxPageState {
  const _$_XxxPageState(
      {this.name = '',
      this.count = 0,
      this.isLoading = false,
      this.musicVolume = 0.0,
      this.timerCount = 0});

  factory _$_XxxPageState.fromJson(Map<String, dynamic> json) =>
      _$$_XxxPageStateFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final double musicVolume;
  @override
  @JsonKey()
  final int timerCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'XxxPageState(name: $name, count: $count, isLoading: $isLoading, musicVolume: $musicVolume, timerCount: $timerCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'XxxPageState'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('musicVolume', musicVolume))
      ..add(DiagnosticsProperty('timerCount', timerCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_XxxPageState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.musicVolume, musicVolume) ||
                other.musicVolume == musicVolume) &&
            (identical(other.timerCount, timerCount) ||
                other.timerCount == timerCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, count, isLoading, musicVolume, timerCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_XxxPageStateCopyWith<_$_XxxPageState> get copyWith =>
      __$$_XxxPageStateCopyWithImpl<_$_XxxPageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_XxxPageStateToJson(
      this,
    );
  }
}

abstract class _XxxPageState implements XxxPageState {
  const factory _XxxPageState(
      {final String name,
      final int count,
      final bool isLoading,
      final double musicVolume,
      final int timerCount}) = _$_XxxPageState;

  factory _XxxPageState.fromJson(Map<String, dynamic> json) =
      _$_XxxPageState.fromJson;

  @override
  String get name;
  @override
  int get count;
  @override
  bool get isLoading;
  @override
  double get musicVolume;
  @override
  int get timerCount;
  @override
  @JsonKey(ignore: true)
  _$$_XxxPageStateCopyWith<_$_XxxPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
