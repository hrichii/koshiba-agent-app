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
  Meta get meta;

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
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, meta);

  @override
  String toString() {
    return 'ApiResponse<$S>(meta: $meta)';
  }
}

/// @nodoc
abstract mixin class $ApiResponseCopyWith<S, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<S> value, $Res Function(ApiResponse<S>) _then) =
      _$ApiResponseCopyWithImpl;
  @useResult
  $Res call({Meta meta});

  $MetaCopyWith<$Res> get meta;
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
    Object? meta = null,
  }) {
    return _then(_self.copyWith(
      meta: null == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_self.meta, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class ApiResponseOk<S> extends ApiResponse<S> {
  const ApiResponseOk(
      {required this.data, required this.meta, final String? $type})
      : $type = $type ?? 'ok',
        super._();
  factory ApiResponseOk.fromJson(
          Map<String, dynamic> json, S Function(Object?) fromJsonS) =>
      _$ApiResponseOkFromJson(json, fromJsonS);

  final S data;
  @override
  final Meta meta;

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
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data), meta);

  @override
  String toString() {
    return 'ApiResponse<$S>.ok(data: $data, meta: $meta)';
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
  $Res call({S data, Meta meta});

  @override
  $MetaCopyWith<$Res> get meta;
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
    Object? meta = null,
  }) {
    return _then(ApiResponseOk<S>(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as S,
      meta: null == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_self.meta, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class ApiResponseNg<S> extends ApiResponse<S> {
  const ApiResponseNg({required this.meta, final String? $type})
      : $type = $type ?? 'ng',
        super._();
  factory ApiResponseNg.fromJson(
          Map<String, dynamic> json, S Function(Object?) fromJsonS) =>
      _$ApiResponseNgFromJson(json, fromJsonS);

  @override
  final Meta meta;

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
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, meta);

  @override
  String toString() {
    return 'ApiResponse<$S>.ng(meta: $meta)';
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
  $Res call({Meta meta});

  @override
  $MetaCopyWith<$Res> get meta;
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
    Object? meta = null,
  }) {
    return _then(ApiResponseNg<S>(
      meta: null == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_self.meta, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

/// @nodoc
mixin _$Meta {
  AppMessageCodeEnum get code;
  String? get message;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MetaCopyWith<Meta> get copyWith =>
      _$MetaCopyWithImpl<Meta>(this as Meta, _$identity);

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Meta &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @override
  String toString() {
    return 'Meta(code: $code, message: $message)';
  }
}

/// @nodoc
abstract mixin class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) _then) =
      _$MetaCopyWithImpl;
  @useResult
  $Res call({AppMessageCodeEnum code, String? message});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res> implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._self, this._then);

  final Meta _self;
  final $Res Function(Meta) _then;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as AppMessageCodeEnum,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Meta implements Meta {
  const _Meta({required this.code, required this.message});
  factory _Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  @override
  final AppMessageCodeEnum code;
  @override
  final String? message;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MetaCopyWith<_Meta> get copyWith =>
      __$MetaCopyWithImpl<_Meta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MetaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Meta &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @override
  String toString() {
    return 'Meta(code: $code, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$MetaCopyWith(_Meta value, $Res Function(_Meta) _then) =
      __$MetaCopyWithImpl;
  @override
  @useResult
  $Res call({AppMessageCodeEnum code, String? message});
}

/// @nodoc
class __$MetaCopyWithImpl<$Res> implements _$MetaCopyWith<$Res> {
  __$MetaCopyWithImpl(this._self, this._then);

  final _Meta _self;
  final $Res Function(_Meta) _then;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? message = freezed,
  }) {
    return _then(_Meta(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as AppMessageCodeEnum,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
