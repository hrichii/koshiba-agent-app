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
Result<S, E> _$ResultFromJson<S,E>(
  Map<String, dynamic> json,S Function(Object?) fromJsonS,E Function(Object?) fromJsonE
) {
        switch (json['runtimeType']) {
                  case 'ok':
          return ResultOk<S, E>.fromJson(
            json,fromJsonS,fromJsonE
          );
                case 'ng':
          return ResultNg<S, E>.fromJson(
            json,fromJsonS,fromJsonE
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'Result',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$Result<S,E> {

 Object? get value;

  /// Serializes this Result to a JSON map.
  Map<String, dynamic> toJson(Object? Function(S) toJsonS,Object? Function(E) toJsonE);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Result<S, E>&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'Result<$S, $E>(value: $value)';
}


}

/// @nodoc
class $ResultCopyWith<S,E,$Res>  {
$ResultCopyWith(Result<S, E> _, $Res Function(Result<S, E>) __);
}


/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class ResultOk<S,E> extends Result<S, E> {
  const ResultOk({required this.value, final  String? $type}): $type = $type ?? 'ok',super._();
  factory ResultOk.fromJson(Map<String, dynamic> json,S Function(Object?) fromJsonS,E Function(Object?) fromJsonE) => _$ResultOkFromJson(json,fromJsonS,fromJsonE);

@override final  S value;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultOkCopyWith<S, E, ResultOk<S, E>> get copyWith => _$ResultOkCopyWithImpl<S, E, ResultOk<S, E>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(S) toJsonS,Object? Function(E) toJsonE) {
  return _$ResultOkToJson<S, E>(this, toJsonS,toJsonE);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultOk<S, E>&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'Result<$S, $E>.ok(value: $value)';
}


}

/// @nodoc
abstract mixin class $ResultOkCopyWith<S,E,$Res> implements $ResultCopyWith<S, E, $Res> {
  factory $ResultOkCopyWith(ResultOk<S, E> value, $Res Function(ResultOk<S, E>) _then) = _$ResultOkCopyWithImpl;
@useResult
$Res call({
 S value
});




}
/// @nodoc
class _$ResultOkCopyWithImpl<S,E,$Res>
    implements $ResultOkCopyWith<S, E, $Res> {
  _$ResultOkCopyWithImpl(this._self, this._then);

  final ResultOk<S, E> _self;
  final $Res Function(ResultOk<S, E>) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(ResultOk<S, E>(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as S,
  ));
}


}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class ResultNg<S,E> extends Result<S, E> {
  const ResultNg({required this.value, final  String? $type}): $type = $type ?? 'ng',super._();
  factory ResultNg.fromJson(Map<String, dynamic> json,S Function(Object?) fromJsonS,E Function(Object?) fromJsonE) => _$ResultNgFromJson(json,fromJsonS,fromJsonE);

@override final  E value;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultNgCopyWith<S, E, ResultNg<S, E>> get copyWith => _$ResultNgCopyWithImpl<S, E, ResultNg<S, E>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(S) toJsonS,Object? Function(E) toJsonE) {
  return _$ResultNgToJson<S, E>(this, toJsonS,toJsonE);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultNg<S, E>&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'Result<$S, $E>.ng(value: $value)';
}


}

/// @nodoc
abstract mixin class $ResultNgCopyWith<S,E,$Res> implements $ResultCopyWith<S, E, $Res> {
  factory $ResultNgCopyWith(ResultNg<S, E> value, $Res Function(ResultNg<S, E>) _then) = _$ResultNgCopyWithImpl;
@useResult
$Res call({
 E value
});




}
/// @nodoc
class _$ResultNgCopyWithImpl<S,E,$Res>
    implements $ResultNgCopyWith<S, E, $Res> {
  _$ResultNgCopyWithImpl(this._self, this._then);

  final ResultNg<S, E> _self;
  final $Res Function(ResultNg<S, E>) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(ResultNg<S, E>(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as E,
  ));
}


}

// dart format on
