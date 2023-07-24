// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_part_1.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailPart1 _$EmailPart1FromJson(Map<String, dynamic> json) {
  return _EmailPart1.fromJson(json);
}

/// @nodoc
mixin _$EmailPart1 {
  String get email => throw _privateConstructorUsedError;
  int get digits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailPart1CopyWith<EmailPart1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailPart1CopyWith<$Res> {
  factory $EmailPart1CopyWith(
          EmailPart1 value, $Res Function(EmailPart1) then) =
      _$EmailPart1CopyWithImpl<$Res, EmailPart1>;
  @useResult
  $Res call({String email, int digits});
}

/// @nodoc
class _$EmailPart1CopyWithImpl<$Res, $Val extends EmailPart1>
    implements $EmailPart1CopyWith<$Res> {
  _$EmailPart1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? digits = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      digits: null == digits
          ? _value.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailPart1CopyWith<$Res>
    implements $EmailPart1CopyWith<$Res> {
  factory _$$_EmailPart1CopyWith(
          _$_EmailPart1 value, $Res Function(_$_EmailPart1) then) =
      __$$_EmailPart1CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, int digits});
}

/// @nodoc
class __$$_EmailPart1CopyWithImpl<$Res>
    extends _$EmailPart1CopyWithImpl<$Res, _$_EmailPart1>
    implements _$$_EmailPart1CopyWith<$Res> {
  __$$_EmailPart1CopyWithImpl(
      _$_EmailPart1 _value, $Res Function(_$_EmailPart1) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? digits = null,
  }) {
    return _then(_$_EmailPart1(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      digits: null == digits
          ? _value.digits
          : digits // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailPart1 implements _EmailPart1 {
  const _$_EmailPart1({required this.email, required this.digits});

  factory _$_EmailPart1.fromJson(Map<String, dynamic> json) =>
      _$$_EmailPart1FromJson(json);

  @override
  final String email;
  @override
  final int digits;

  @override
  String toString() {
    return 'EmailPart1(email: $email, digits: $digits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailPart1 &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.digits, digits) || other.digits == digits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, digits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailPart1CopyWith<_$_EmailPart1> get copyWith =>
      __$$_EmailPart1CopyWithImpl<_$_EmailPart1>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailPart1ToJson(
      this,
    );
  }
}

abstract class _EmailPart1 implements EmailPart1 {
  const factory _EmailPart1(
      {required final String email, required final int digits}) = _$_EmailPart1;

  factory _EmailPart1.fromJson(Map<String, dynamic> json) =
      _$_EmailPart1.fromJson;

  @override
  String get email;
  @override
  int get digits;
  @override
  @JsonKey(ignore: true)
  _$$_EmailPart1CopyWith<_$_EmailPart1> get copyWith =>
      throw _privateConstructorUsedError;
}
