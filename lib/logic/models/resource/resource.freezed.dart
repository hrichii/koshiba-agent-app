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
Resource<S> _$ResourceFromJson<S>(
    Map<String, dynamic> json, S Function(Object?) fromJsonS) {
  switch (json['runtimeType']) {
    case 'done':
      return ResourceDone<S>.fromJson(json, fromJsonS);
    case 'inProgress':
      return ResourceInProgress<S>.fromJson(json, fromJsonS);
    case 'error':
      return ResourceError<S>.fromJson(json, fromJsonS);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Resource',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Resource<S> {
  /// Serializes this Resource to a JSON map.
  Map<String, dynamic> toJson(Object? Function(S) toJsonS);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Resource<S>);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Resource<$S>()';
  }
}

/// @nodoc
class $ResourceCopyWith<S, $Res> {
  $ResourceCopyWith(Resource<S> _, $Res Function(Resource<S>) __);
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class ResourceDone<S> extends Resource<S> {
  const ResourceDone({required this.value, final String? $type})
      : $type = $type ?? 'done',
        super._();
  factory ResourceDone.fromJson(
          Map<String, dynamic> json, S Function(Object?) fromJsonS) =>
      _$ResourceDoneFromJson(json, fromJsonS);

  final S value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResourceDoneCopyWith<S, ResourceDone<S>> get copyWith =>
      _$ResourceDoneCopyWithImpl<S, ResourceDone<S>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(S) toJsonS) {
    return _$ResourceDoneToJson<S>(this, toJsonS);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResourceDone<S> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'Resource<$S>.done(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ResourceDoneCopyWith<S, $Res>
    implements $ResourceCopyWith<S, $Res> {
  factory $ResourceDoneCopyWith(
          ResourceDone<S> value, $Res Function(ResourceDone<S>) _then) =
      _$ResourceDoneCopyWithImpl;
  @useResult
  $Res call({S value});
}

/// @nodoc
class _$ResourceDoneCopyWithImpl<S, $Res>
    implements $ResourceDoneCopyWith<S, $Res> {
  _$ResourceDoneCopyWithImpl(this._self, this._then);

  final ResourceDone<S> _self;
  final $Res Function(ResourceDone<S>) _then;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(ResourceDone<S>(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as S,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class ResourceInProgress<S> extends Resource<S> {
  const ResourceInProgress({final String? $type})
      : $type = $type ?? 'inProgress',
        super._();
  factory ResourceInProgress.fromJson(
          Map<String, dynamic> json, S Function(Object?) fromJsonS) =>
      _$ResourceInProgressFromJson(json, fromJsonS);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson(Object? Function(S) toJsonS) {
    return _$ResourceInProgressToJson<S>(this, toJsonS);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResourceInProgress<S>);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Resource<$S>.inProgress()';
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class ResourceError<S> extends Resource<S> {
  const ResourceError({required this.value, final String? $type})
      : $type = $type ?? 'error',
        super._();
  factory ResourceError.fromJson(
          Map<String, dynamic> json, S Function(Object?) fromJsonS) =>
      _$ResourceErrorFromJson(json, fromJsonS);

  final AppMessageCode value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResourceErrorCopyWith<S, ResourceError<S>> get copyWith =>
      _$ResourceErrorCopyWithImpl<S, ResourceError<S>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(S) toJsonS) {
    return _$ResourceErrorToJson<S>(this, toJsonS);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResourceError<S> &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  String toString() {
    return 'Resource<$S>.error(value: $value)';
  }
}

/// @nodoc
abstract mixin class $ResourceErrorCopyWith<S, $Res>
    implements $ResourceCopyWith<S, $Res> {
  factory $ResourceErrorCopyWith(
          ResourceError<S> value, $Res Function(ResourceError<S>) _then) =
      _$ResourceErrorCopyWithImpl;
  @useResult
  $Res call({AppMessageCode value});

  $AppMessageCodeCopyWith<$Res> get value;
}

/// @nodoc
class _$ResourceErrorCopyWithImpl<S, $Res>
    implements $ResourceErrorCopyWith<S, $Res> {
  _$ResourceErrorCopyWithImpl(this._self, this._then);

  final ResourceError<S> _self;
  final $Res Function(ResourceError<S>) _then;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
  }) {
    return _then(ResourceError<S>(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as AppMessageCode,
    ));
  }

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppMessageCodeCopyWith<$Res> get value {
    return $AppMessageCodeCopyWith<$Res>(_self.value, (value) {
      return _then(_self.copyWith(value: value));
    });
  }
}

// dart format on
