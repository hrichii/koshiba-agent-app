// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResultSuccess<S, E> {
  S get value;

  /// Create a copy of ResultSuccess
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResultSuccessCopyWith<S, E, ResultSuccess<S, E>> get copyWith =>
      _$ResultSuccessCopyWithImpl<S, E, ResultSuccess<S, E>>(
          this as ResultSuccess<S, E>, _$identity);

  /// Serializes this ResultSuccess to a JSON map.
  Map<String, dynamic> toJson(
      Object? Function(S) toJsonS, Object? Function(E) toJsonE);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResultSuccess<S, E> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'ResultSuccess<$S, $E>(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ResultSuccessCopyWith<S, E, $Res> {
  factory $ResultSuccessCopyWith(
          ResultSuccess<S, E> value, $Res Function(ResultSuccess<S, E>) _then) =
      _$ResultSuccessCopyWithImpl;
  @useResult
  $Res call({S value});
}

/// @nodoc
class _$ResultSuccessCopyWithImpl<S, E, $Res>
    implements $ResultSuccessCopyWith<S, E, $Res> {
  _$ResultSuccessCopyWithImpl(this._self, this._then);

  final ResultSuccess<S, E> _self;
  final $Res Function(ResultSuccess<S, E>) _then;

  /// Create a copy of ResultSuccess
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_self.copyWith(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as S,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _ResultSuccess<S, E> extends ResultSuccess<S, E> {
  const _ResultSuccess({required this.value}) : super._();
  factory _ResultSuccess.fromJson(Map<String, dynamic> json,
          S Function(Object?) fromJsonS, E Function(Object?) fromJsonE) =>
      _$ResultSuccessFromJson(json, fromJsonS, fromJsonE);

  @override
  final S value;

  /// Create a copy of ResultSuccess
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResultSuccessCopyWith<S, E, _ResultSuccess<S, E>> get copyWith =>
      __$ResultSuccessCopyWithImpl<S, E, _ResultSuccess<S, E>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(
      Object? Function(S) toJsonS, Object? Function(E) toJsonE) {
    return _$ResultSuccessToJson<S, E>(this, toJsonS, toJsonE);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultSuccess<S, E> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'ResultSuccess<$S, $E>(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ResultSuccessCopyWith<S, E, $Res>
    implements $ResultSuccessCopyWith<S, E, $Res> {
  factory _$ResultSuccessCopyWith(_ResultSuccess<S, E> value,
      $Res Function(_ResultSuccess<S, E>) _then) = __$ResultSuccessCopyWithImpl;
  @override
  @useResult
  $Res call({S value});
}

/// @nodoc
class __$ResultSuccessCopyWithImpl<S, E, $Res>
    implements _$ResultSuccessCopyWith<S, E, $Res> {
  __$ResultSuccessCopyWithImpl(this._self, this._then);

  final _ResultSuccess<S, E> _self;
  final $Res Function(_ResultSuccess<S, E>) _then;

  /// Create a copy of ResultSuccess
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ResultSuccess<S, E>(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as S,
    ));
  }
}

/// @nodoc
mixin _$ResultError<S, E> {
  E get value;

  /// Create a copy of ResultError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResultErrorCopyWith<S, E, ResultError<S, E>> get copyWith =>
      _$ResultErrorCopyWithImpl<S, E, ResultError<S, E>>(
          this as ResultError<S, E>, _$identity);

  /// Serializes this ResultError to a JSON map.
  Map<String, dynamic> toJson(
      Object? Function(S) toJsonS, Object? Function(E) toJsonE);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResultError<S, E> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'ResultError<$S, $E>(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ResultErrorCopyWith<S, E, $Res> {
  factory $ResultErrorCopyWith(
          ResultError<S, E> value, $Res Function(ResultError<S, E>) _then) =
      _$ResultErrorCopyWithImpl;
  @useResult
  $Res call({E value});
}

/// @nodoc
class _$ResultErrorCopyWithImpl<S, E, $Res>
    implements $ResultErrorCopyWith<S, E, $Res> {
  _$ResultErrorCopyWithImpl(this._self, this._then);

  final ResultError<S, E> _self;
  final $Res Function(ResultError<S, E>) _then;

  /// Create a copy of ResultError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_self.copyWith(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _ResultError<S, E> extends ResultError<S, E> {
  const _ResultError({required this.value}) : super._();
  factory _ResultError.fromJson(Map<String, dynamic> json,
          S Function(Object?) fromJsonS, E Function(Object?) fromJsonE) =>
      _$ResultErrorFromJson(json, fromJsonS, fromJsonE);

  @override
  final E value;

  /// Create a copy of ResultError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResultErrorCopyWith<S, E, _ResultError<S, E>> get copyWith =>
      __$ResultErrorCopyWithImpl<S, E, _ResultError<S, E>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(
      Object? Function(S) toJsonS, Object? Function(E) toJsonE) {
    return _$ResultErrorToJson<S, E>(this, toJsonS, toJsonE);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultError<S, E> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'ResultError<$S, $E>(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ResultErrorCopyWith<S, E, $Res>
    implements $ResultErrorCopyWith<S, E, $Res> {
  factory _$ResultErrorCopyWith(
          _ResultError<S, E> value, $Res Function(_ResultError<S, E>) _then) =
      __$ResultErrorCopyWithImpl;
  @override
  @useResult
  $Res call({E value});
}

/// @nodoc
class __$ResultErrorCopyWithImpl<S, E, $Res>
    implements _$ResultErrorCopyWith<S, E, $Res> {
  __$ResultErrorCopyWithImpl(this._self, this._then);

  final _ResultError<S, E> _self;
  final $Res Function(_ResultError<S, E>) _then;

  /// Create a copy of ResultError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ResultError<S, E>(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

// dart format on
