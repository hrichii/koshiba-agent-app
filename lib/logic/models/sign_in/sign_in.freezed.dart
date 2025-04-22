// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignIn {
  @RfControl(validators: AppValidation.email)
  String? get email;
  @RfControl(validators: AppValidation.password)
  String? get password;

  /// Create a copy of SignIn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignInCopyWith<SignIn> get copyWith =>
      _$SignInCopyWithImpl<SignIn>(this as SignIn, _$identity);

  /// Serializes this SignIn to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignIn &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'SignIn(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class $SignInCopyWith<$Res> {
  factory $SignInCopyWith(SignIn value, $Res Function(SignIn) _then) =
      _$SignInCopyWithImpl;
  @useResult
  $Res call(
      {@RfControl(validators: AppValidation.email) String? email,
      @RfControl(validators: AppValidation.password) String? password});
}

/// @nodoc
class _$SignInCopyWithImpl<$Res> implements $SignInCopyWith<$Res> {
  _$SignInCopyWithImpl(this._self, this._then);

  final SignIn _self;
  final $Res Function(SignIn) _then;

  /// Create a copy of SignIn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_self.copyWith(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _SignIn extends SignIn {
  const _SignIn(
      {@RfControl(validators: AppValidation.email) this.email,
      @RfControl(validators: AppValidation.password) this.password})
      : super._();
  factory _SignIn.fromJson(Map<String, dynamic> json) => _$SignInFromJson(json);

  @override
  @RfControl(validators: AppValidation.email)
  final String? email;
  @override
  @RfControl(validators: AppValidation.password)
  final String? password;

  /// Create a copy of SignIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignInCopyWith<_SignIn> get copyWith =>
      __$SignInCopyWithImpl<_SignIn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SignInToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignIn &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @override
  String toString() {
    return 'SignIn(email: $email, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$SignInCopyWith<$Res> implements $SignInCopyWith<$Res> {
  factory _$SignInCopyWith(_SignIn value, $Res Function(_SignIn) _then) =
      __$SignInCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@RfControl(validators: AppValidation.email) String? email,
      @RfControl(validators: AppValidation.password) String? password});
}

/// @nodoc
class __$SignInCopyWithImpl<$Res> implements _$SignInCopyWith<$Res> {
  __$SignInCopyWithImpl(this._self, this._then);

  final _SignIn _self;
  final $Res Function(_SignIn) _then;

  /// Create a copy of SignIn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_SignIn(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
