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
mixin _$ResultFailure<S, E> {
  E get value;

  /// Create a copy of ResultFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResultFailureCopyWith<S, E, ResultFailure<S, E>> get copyWith =>
      _$ResultFailureCopyWithImpl<S, E, ResultFailure<S, E>>(
          this as ResultFailure<S, E>, _$identity);

  /// Serializes this ResultFailure to a JSON map.
  Map<String, dynamic> toJson(
      Object? Function(S) toJsonS, Object? Function(E) toJsonE);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResultFailure<S, E> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'ResultFailure<$S, $E>(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ResultFailureCopyWith<S, E, $Res> {
  factory $ResultFailureCopyWith(
          ResultFailure<S, E> value, $Res Function(ResultFailure<S, E>) _then) =
      _$ResultFailureCopyWithImpl;
  @useResult
  $Res call({E value});
}

/// @nodoc
class _$ResultFailureCopyWithImpl<S, E, $Res>
    implements $ResultFailureCopyWith<S, E, $Res> {
  _$ResultFailureCopyWithImpl(this._self, this._then);

  final ResultFailure<S, E> _self;
  final $Res Function(ResultFailure<S, E>) _then;

  /// Create a copy of ResultFailure
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
class _ResultFailure<S, E> extends ResultFailure<S, E> {
  const _ResultFailure({required this.value}) : super._();
  factory _ResultFailure.fromJson(Map<String, dynamic> json,
          S Function(Object?) fromJsonS, E Function(Object?) fromJsonE) =>
      _$ResultFailureFromJson(json, fromJsonS, fromJsonE);

  @override
  final E value;

  /// Create a copy of ResultFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResultFailureCopyWith<S, E, _ResultFailure<S, E>> get copyWith =>
      __$ResultFailureCopyWithImpl<S, E, _ResultFailure<S, E>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(
      Object? Function(S) toJsonS, Object? Function(E) toJsonE) {
    return _$ResultFailureToJson<S, E>(this, toJsonS, toJsonE);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultFailure<S, E> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'ResultFailure<$S, $E>(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ResultFailureCopyWith<S, E, $Res>
    implements $ResultFailureCopyWith<S, E, $Res> {
  factory _$ResultFailureCopyWith(_ResultFailure<S, E> value,
      $Res Function(_ResultFailure<S, E>) _then) = __$ResultFailureCopyWithImpl;
  @override
  @useResult
  $Res call({E value});
}

/// @nodoc
class __$ResultFailureCopyWithImpl<S, E, $Res>
    implements _$ResultFailureCopyWith<S, E, $Res> {
  __$ResultFailureCopyWithImpl(this._self, this._then);

  final _ResultFailure<S, E> _self;
  final $Res Function(_ResultFailure<S, E>) _then;

  /// Create a copy of ResultFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ResultFailure<S, E>(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

// dart format on
