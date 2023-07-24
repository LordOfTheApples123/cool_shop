// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_part_2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailPart2 _$EmailPart2FromJson(Map<String, dynamic> json) {
  return _EmailPart2.fromJson(json);
}

/// @nodoc
mixin _$EmailPart2 {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailPart2CopyWith<EmailPart2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailPart2CopyWith<$Res> {
  factory $EmailPart2CopyWith(
          EmailPart2 value, $Res Function(EmailPart2) then) =
      _$EmailPart2CopyWithImpl<$Res, EmailPart2>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$EmailPart2CopyWithImpl<$Res, $Val extends EmailPart2>
    implements $EmailPart2CopyWith<$Res> {
  _$EmailPart2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailPart2CopyWith<$Res>
    implements $EmailPart2CopyWith<$Res> {
  factory _$$_EmailPart2CopyWith(
          _$_EmailPart2 value, $Res Function(_$_EmailPart2) then) =
      __$$_EmailPart2CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$_EmailPart2CopyWithImpl<$Res>
    extends _$EmailPart2CopyWithImpl<$Res, _$_EmailPart2>
    implements _$$_EmailPart2CopyWith<$Res> {
  __$$_EmailPart2CopyWithImpl(
      _$_EmailPart2 _value, $Res Function(_$_EmailPart2) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$_EmailPart2(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailPart2 implements _EmailPart2 {
  const _$_EmailPart2({required this.email, required this.code});

  factory _$_EmailPart2.fromJson(Map<String, dynamic> json) =>
      _$$_EmailPart2FromJson(json);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'EmailPart2(email: $email, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailPart2 &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailPart2CopyWith<_$_EmailPart2> get copyWith =>
      __$$_EmailPart2CopyWithImpl<_$_EmailPart2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailPart2ToJson(
      this,
    );
  }
}

abstract class _EmailPart2 implements EmailPart2 {
  const factory _EmailPart2(
      {required final String email,
      required final String code}) = _$_EmailPart2;

  factory _EmailPart2.fromJson(Map<String, dynamic> json) =
      _$_EmailPart2.fromJson;

  @override
  String get email;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$_EmailPart2CopyWith<_$_EmailPart2> get copyWith =>
      throw _privateConstructorUsedError;
}
