// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connect_to_google_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConnectToGoogleRequestDto {
  @JsonKey(name: 'auth_code')
  String get authCode;

  /// Create a copy of ConnectToGoogleRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConnectToGoogleRequestDtoCopyWith<ConnectToGoogleRequestDto> get copyWith =>
      _$ConnectToGoogleRequestDtoCopyWithImpl<ConnectToGoogleRequestDto>(
          this as ConnectToGoogleRequestDto, _$identity);

  /// Serializes this ConnectToGoogleRequestDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConnectToGoogleRequestDto &&
            (identical(other.authCode, authCode) ||
                other.authCode == authCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, authCode);

  @override
  String toString() {
    return 'ConnectToGoogleRequestDto(authCode: $authCode)';
  }
}

/// @nodoc
abstract mixin class $ConnectToGoogleRequestDtoCopyWith<$Res> {
  factory $ConnectToGoogleRequestDtoCopyWith(ConnectToGoogleRequestDto value,
          $Res Function(ConnectToGoogleRequestDto) _then) =
      _$ConnectToGoogleRequestDtoCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'auth_code') String authCode});
}

/// @nodoc
class _$ConnectToGoogleRequestDtoCopyWithImpl<$Res>
    implements $ConnectToGoogleRequestDtoCopyWith<$Res> {
  _$ConnectToGoogleRequestDtoCopyWithImpl(this._self, this._then);

  final ConnectToGoogleRequestDto _self;
  final $Res Function(ConnectToGoogleRequestDto) _then;

  /// Create a copy of ConnectToGoogleRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authCode = null,
  }) {
    return _then(_self.copyWith(
      authCode: null == authCode
          ? _self.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ConnectToGoogleRequestDto implements ConnectToGoogleRequestDto {
  const _ConnectToGoogleRequestDto(
      {@JsonKey(name: 'auth_code') required this.authCode});
  factory _ConnectToGoogleRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ConnectToGoogleRequestDtoFromJson(json);

  @override
  @JsonKey(name: 'auth_code')
  final String authCode;

  /// Create a copy of ConnectToGoogleRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConnectToGoogleRequestDtoCopyWith<_ConnectToGoogleRequestDto>
      get copyWith =>
          __$ConnectToGoogleRequestDtoCopyWithImpl<_ConnectToGoogleRequestDto>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ConnectToGoogleRequestDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConnectToGoogleRequestDto &&
            (identical(other.authCode, authCode) ||
                other.authCode == authCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, authCode);

  @override
  String toString() {
    return 'ConnectToGoogleRequestDto(authCode: $authCode)';
  }
}

/// @nodoc
abstract mixin class _$ConnectToGoogleRequestDtoCopyWith<$Res>
    implements $ConnectToGoogleRequestDtoCopyWith<$Res> {
  factory _$ConnectToGoogleRequestDtoCopyWith(_ConnectToGoogleRequestDto value,
          $Res Function(_ConnectToGoogleRequestDto) _then) =
      __$ConnectToGoogleRequestDtoCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'auth_code') String authCode});
}

/// @nodoc
class __$ConnectToGoogleRequestDtoCopyWithImpl<$Res>
    implements _$ConnectToGoogleRequestDtoCopyWith<$Res> {
  __$ConnectToGoogleRequestDtoCopyWithImpl(this._self, this._then);

  final _ConnectToGoogleRequestDto _self;
  final $Res Function(_ConnectToGoogleRequestDto) _then;

  /// Create a copy of ConnectToGoogleRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? authCode = null,
  }) {
    return _then(_ConnectToGoogleRequestDto(
      authCode: null == authCode
          ? _self.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
