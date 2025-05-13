// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ApiResponse<S> _$ApiResponseFromJson<S>(
    Map<String, dynamic> json, S Function(Object?) fromJsonS) {
  switch (json['runtimeType']) {
    case 'ok':
      return ApiResponseOk<S>.fromJson(json, fromJsonS);
    case 'ng':
      return ApiResponseNg<S>.fromJson(json, fromJsonS);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ApiResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ApiResponse<S> {
  @JsonKey(name: 'meta')
  AppMessageCode get messageCode;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<S, ApiResponse<S>> get copyWith =>
      _$ApiResponseCopyWithImpl<S, ApiResponse<S>>(
          this as ApiResponse<S>, _$identity);

  /// Serializes this ApiResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(S) toJsonS);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiResponse<S> &&
            (identical(other.messageCode, messageCode) ||
                other.messageCode == messageCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, messageCode);

  @override
  String toString() {
    return 'ApiResponse<$S>(messageCode: $messageCode)';
  }
}

/// @nodoc
abstract mixin class $ApiResponseCopyWith<S, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<S> value, $Res Function(ApiResponse<S>) _then) =
      _$ApiResponseCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'meta') AppMessageCode messageCode});

  $AppMessageCodeCopyWith<$Res> get messageCode;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<S, $Res>
    implements $ApiResponseCopyWith<S, $Res> {
  _$ApiResponseCopyWithImpl(this._self, this._then);

  final ApiResponse<S> _self;
  final $Res Function(ApiResponse<S>) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageCode = null,
  }) {
    return _then(_self.copyWith(
      messageCode: null == messageCode
          ? _self.messageCode
          : messageCode // ignore: cast_nullable_to_non_nullable
              as AppMessageCode,
    ));
  }

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppMessageCodeCopyWith<$Res> get messageCode {
    return $AppMessageCodeCopyWith<$Res>(_self.messageCode, (value) {
      return _then(_self.copyWith(messageCode: value));
    });
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class ApiResponseOk<S> extends ApiResponse<S> {
  const ApiResponseOk(
      {required this.data,
      @JsonKey(name: 'meta') required this.messageCode,
      final String? $type})
      : $type = $type ?? 'ok',
        super._();
  factory ApiResponseOk.fromJson(
          Map<String, dynamic> json, S Function(Object?) fromJsonS) =>
      _$ApiResponseOkFromJson(json, fromJsonS);

  final S data;
  @override
  @JsonKey(name: 'meta')
  final AppMessageCode messageCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiResponseOkCopyWith<S, ApiResponseOk<S>> get copyWith =>
      _$ApiResponseOkCopyWithImpl<S, ApiResponseOk<S>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(S) toJsonS) {
    return _$ApiResponseOkToJson<S>(this, toJsonS);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiResponseOk<S> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.messageCode, messageCode) ||
                other.messageCode == messageCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), messageCode);

  @override
  String toString() {
    return 'ApiResponse<$S>.ok(data: $data, messageCode: $messageCode)';
  }
}

/// @nodoc
abstract mixin class $ApiResponseOkCopyWith<S, $Res>
    implements $ApiResponseCopyWith<S, $Res> {
  factory $ApiResponseOkCopyWith(
          ApiResponseOk<S> value, $Res Function(ApiResponseOk<S>) _then) =
      _$ApiResponseOkCopyWithImpl;
  @override
  @useResult
  $Res call({S data, @JsonKey(name: 'meta') AppMessageCode messageCode});

  @override
  $AppMessageCodeCopyWith<$Res> get messageCode;
}

/// @nodoc
class _$ApiResponseOkCopyWithImpl<S, $Res>
    implements $ApiResponseOkCopyWith<S, $Res> {
  _$ApiResponseOkCopyWithImpl(this._self, this._then);

  final ApiResponseOk<S> _self;
  final $Res Function(ApiResponseOk<S>) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
    Object? messageCode = null,
  }) {
    return _then(ApiResponseOk<S>(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as S,
      messageCode: null == messageCode
          ? _self.messageCode
          : messageCode // ignore: cast_nullable_to_non_nullable
              as AppMessageCode,
    ));
  }

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppMessageCodeCopyWith<$Res> get messageCode {
    return $AppMessageCodeCopyWith<$Res>(_self.messageCode, (value) {
      return _then(_self.copyWith(messageCode: value));
    });
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class ApiResponseNg<S> extends ApiResponse<S> {
  const ApiResponseNg(
      {@JsonKey(name: 'meta') required this.messageCode, final String? $type})
      : $type = $type ?? 'ng',
        super._();
  factory ApiResponseNg.fromJson(
          Map<String, dynamic> json, S Function(Object?) fromJsonS) =>
      _$ApiResponseNgFromJson(json, fromJsonS);

  @override
  @JsonKey(name: 'meta')
  final AppMessageCode messageCode;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiResponseNgCopyWith<S, ApiResponseNg<S>> get copyWith =>
      _$ApiResponseNgCopyWithImpl<S, ApiResponseNg<S>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(S) toJsonS) {
    return _$ApiResponseNgToJson<S>(this, toJsonS);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiResponseNg<S> &&
            (identical(other.messageCode, messageCode) ||
                other.messageCode == messageCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, messageCode);

  @override
  String toString() {
    return 'ApiResponse<$S>.ng(messageCode: $messageCode)';
  }
}

/// @nodoc
abstract mixin class $ApiResponseNgCopyWith<S, $Res>
    implements $ApiResponseCopyWith<S, $Res> {
  factory $ApiResponseNgCopyWith(
          ApiResponseNg<S> value, $Res Function(ApiResponseNg<S>) _then) =
      _$ApiResponseNgCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'meta') AppMessageCode messageCode});

  @override
  $AppMessageCodeCopyWith<$Res> get messageCode;
}

/// @nodoc
class _$ApiResponseNgCopyWithImpl<S, $Res>
    implements $ApiResponseNgCopyWith<S, $Res> {
  _$ApiResponseNgCopyWithImpl(this._self, this._then);

  final ApiResponseNg<S> _self;
  final $Res Function(ApiResponseNg<S>) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? messageCode = null,
  }) {
    return _then(ApiResponseNg<S>(
      messageCode: null == messageCode
          ? _self.messageCode
          : messageCode // ignore: cast_nullable_to_non_nullable
              as AppMessageCode,
    ));
  }

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppMessageCodeCopyWith<$Res> get messageCode {
    return $AppMessageCodeCopyWith<$Res>(_self.messageCode, (value) {
      return _then(_self.copyWith(messageCode: value));
    });
  }
}

// dart format on
