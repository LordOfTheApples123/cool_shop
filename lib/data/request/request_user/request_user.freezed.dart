// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RequestUser {
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "second_name")
  String get secondName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String? get birthDay => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestUserCopyWith<RequestUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestUserCopyWith<$Res> {
  factory $RequestUserCopyWith(
          RequestUser value, $Res Function(RequestUser) then) =
      _$RequestUserCopyWithImpl<$Res, RequestUser>;
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "second_name") String secondName,
      String email,
      String gender,
      String? birthDay,
      String role});
}

/// @nodoc
class _$RequestUserCopyWithImpl<$Res, $Val extends RequestUser>
    implements $RequestUserCopyWith<$Res> {
  _$RequestUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? secondName = null,
    Object? email = null,
    Object? gender = null,
    Object? birthDay = freezed,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthDay: freezed == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestUserCopyWith<$Res>
    implements $RequestUserCopyWith<$Res> {
  factory _$$_RequestUserCopyWith(
          _$_RequestUser value, $Res Function(_$_RequestUser) then) =
      __$$_RequestUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "second_name") String secondName,
      String email,
      String gender,
      String? birthDay,
      String role});
}

/// @nodoc
class __$$_RequestUserCopyWithImpl<$Res>
    extends _$RequestUserCopyWithImpl<$Res, _$_RequestUser>
    implements _$$_RequestUserCopyWith<$Res> {
  __$$_RequestUserCopyWithImpl(
      _$_RequestUser _value, $Res Function(_$_RequestUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? secondName = null,
    Object? email = null,
    Object? gender = null,
    Object? birthDay = freezed,
    Object? role = null,
  }) {
    return _then(_$_RequestUser(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthDay: freezed == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_RequestUser implements _RequestUser {
  const _$_RequestUser(
      {@JsonKey(name: "first_name") required this.firstName,
      @JsonKey(name: "second_name") required this.secondName,
      required this.email,
      required this.gender,
      this.birthDay,
      required this.role});

  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "second_name")
  final String secondName;
  @override
  final String email;
  @override
  final String gender;
  @override
  final String? birthDay;
  @override
  final String role;

  @override
  String toString() {
    return 'RequestUser(firstName: $firstName, secondName: $secondName, email: $email, gender: $gender, birthDay: $birthDay, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestUser &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.secondName, secondName) ||
                other.secondName == secondName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDay, birthDay) ||
                other.birthDay == birthDay) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, secondName, email, gender, birthDay, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestUserCopyWith<_$_RequestUser> get copyWith =>
      __$$_RequestUserCopyWithImpl<_$_RequestUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestUserToJson(
      this,
    );
  }
}

abstract class _RequestUser implements RequestUser {
  const factory _RequestUser(
      {@JsonKey(name: "first_name") required final String? firstName,
      @JsonKey(name: "second_name") required final String secondName,
      required final String email,
      required final String gender,
      final String? birthDay,
      required final String role}) = _$_RequestUser;

  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "second_name")
  String get secondName;
  @override
  String get email;
  @override
  String get gender;
  @override
  String? get birthDay;
  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$_RequestUserCopyWith<_$_RequestUser> get copyWith =>
      throw _privateConstructorUsedError;
}
