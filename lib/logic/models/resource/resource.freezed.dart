// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResourceDone<D> {
  D get value;

  /// Create a copy of ResourceDone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResourceDoneCopyWith<D, ResourceDone<D>> get copyWith =>
      _$ResourceDoneCopyWithImpl<D, ResourceDone<D>>(
          this as ResourceDone<D>, _$identity);

  /// Serializes this ResourceDone to a JSON map.
  Map<String, dynamic> toJson(Object? Function(D) toJsonD);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResourceDone<D> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'ResourceDone<$D>(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ResourceDoneCopyWith<D, $Res> {
  factory $ResourceDoneCopyWith(
          ResourceDone<D> value, $Res Function(ResourceDone<D>) _then) =
      _$ResourceDoneCopyWithImpl;
  @useResult
  $Res call({D value});
}

/// @nodoc
class _$ResourceDoneCopyWithImpl<D, $Res>
    implements $ResourceDoneCopyWith<D, $Res> {
  _$ResourceDoneCopyWithImpl(this._self, this._then);

  final ResourceDone<D> _self;
  final $Res Function(ResourceDone<D>) _then;

  /// Create a copy of ResourceDone
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
              as D,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _ResourceDone<D> extends ResourceDone<D> {
  const _ResourceDone({required this.value}) : super._();
  factory _ResourceDone.fromJson(
          Map<String, dynamic> json, D Function(Object?) fromJsonD) =>
      _$ResourceDoneFromJson(json, fromJsonD);

  @override
  final D value;

  /// Create a copy of ResourceDone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResourceDoneCopyWith<D, _ResourceDone<D>> get copyWith =>
      __$ResourceDoneCopyWithImpl<D, _ResourceDone<D>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(D) toJsonD) {
    return _$ResourceDoneToJson<D>(this, toJsonD);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResourceDone<D> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'ResourceDone<$D>(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ResourceDoneCopyWith<D, $Res>
    implements $ResourceDoneCopyWith<D, $Res> {
  factory _$ResourceDoneCopyWith(
          _ResourceDone<D> value, $Res Function(_ResourceDone<D>) _then) =
      __$ResourceDoneCopyWithImpl;
  @override
  @useResult
  $Res call({D value});
}

/// @nodoc
class __$ResourceDoneCopyWithImpl<D, $Res>
    implements _$ResourceDoneCopyWith<D, $Res> {
  __$ResourceDoneCopyWithImpl(this._self, this._then);

  final _ResourceDone<D> _self;
  final $Res Function(_ResourceDone<D>) _then;

  /// Create a copy of ResourceDone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ResourceDone<D>(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as D,
    ));
  }
}

/// @nodoc
mixin _$ResourceInProgress<D> {
  /// Serializes this ResourceInProgress to a JSON map.
  Map<String, dynamic> toJson(Object? Function(D) toJsonD);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResourceInProgress<D>);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ResourceInProgress<$D>()';
  }
}

/// @nodoc
class $ResourceInProgressCopyWith<D, $Res> {
  $ResourceInProgressCopyWith(
      ResourceInProgress<D> _, $Res Function(ResourceInProgress<D>) __);
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _ResourceInProgress<D> extends ResourceInProgress<D> {
  const _ResourceInProgress() : super._();
  factory _ResourceInProgress.fromJson(
          Map<String, dynamic> json, D Function(Object?) fromJsonD) =>
      _$ResourceInProgressFromJson(json, fromJsonD);

  @override
  Map<String, dynamic> toJson(Object? Function(D) toJsonD) {
    return _$ResourceInProgressToJson<D>(this, toJsonD);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResourceInProgress<D>);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ResourceInProgress<$D>()';
  }
}

/// @nodoc
mixin _$ResourceError<D> {
  AppException get value;

  /// Create a copy of ResourceError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResourceErrorCopyWith<D, ResourceError<D>> get copyWith =>
      _$ResourceErrorCopyWithImpl<D, ResourceError<D>>(
          this as ResourceError<D>, _$identity);

  /// Serializes this ResourceError to a JSON map.
  Map<String, dynamic> toJson(Object? Function(D) toJsonD);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResourceError<D> &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ResourceError<$D>(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ResourceErrorCopyWith<D, $Res> {
  factory $ResourceErrorCopyWith(
          ResourceError<D> value, $Res Function(ResourceError<D>) _then) =
      _$ResourceErrorCopyWithImpl;
  @useResult
  $Res call({AppException value});

  $AppExceptionCopyWith<$Res> get value;
}

/// @nodoc
class _$ResourceErrorCopyWithImpl<D, $Res>
    implements $ResourceErrorCopyWith<D, $Res> {
  _$ResourceErrorCopyWithImpl(this._self, this._then);

  final ResourceError<D> _self;
  final $Res Function(ResourceError<D>) _then;

  /// Create a copy of ResourceError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }

  /// Create a copy of ResourceError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppExceptionCopyWith<$Res> get value {
    return $AppExceptionCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _ResourceError<D> extends ResourceError<D> {
  const _ResourceError({required this.value}) : super._();
  factory _ResourceError.fromJson(
          Map<String, dynamic> json, D Function(Object?) fromJsonD) =>
      _$ResourceErrorFromJson(json, fromJsonD);

  @override
  final AppException value;

  /// Create a copy of ResourceError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResourceErrorCopyWith<D, _ResourceError<D>> get copyWith =>
      __$ResourceErrorCopyWithImpl<D, _ResourceError<D>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(D) toJsonD) {
    return _$ResourceErrorToJson<D>(this, toJsonD);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResourceError<D> &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'ResourceError<$D>(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ResourceErrorCopyWith<D, $Res>
    implements $ResourceErrorCopyWith<D, $Res> {
  factory _$ResourceErrorCopyWith(
          _ResourceError<D> value, $Res Function(_ResourceError<D>) _then) =
      __$ResourceErrorCopyWithImpl;
  @override
  @useResult
  $Res call({AppException value});

  @override
  $AppExceptionCopyWith<$Res> get value;
}

/// @nodoc
class __$ResourceErrorCopyWithImpl<D, $Res>
    implements _$ResourceErrorCopyWith<D, $Res> {
  __$ResourceErrorCopyWithImpl(this._self, this._then);

  final _ResourceError<D> _self;
  final $Res Function(_ResourceError<D>) _then;

  /// Create a copy of ResourceError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(_ResourceError<D>(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }

  /// Create a copy of ResourceError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppExceptionCopyWith<$Res> get value {
    return $AppExceptionCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}

// dart format on
