// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartRequest {
  @JsonKey(name: "product_id")
  int get productId => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartRequestCopyWith<CartRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartRequestCopyWith<$Res> {
  factory $CartRequestCopyWith(
          CartRequest value, $Res Function(CartRequest) then) =
      _$CartRequestCopyWithImpl<$Res, CartRequest>;
  @useResult
  $Res call({@JsonKey(name: "product_id") int productId, int? count});
}

/// @nodoc
class _$CartRequestCopyWithImpl<$Res, $Val extends CartRequest>
    implements $CartRequestCopyWith<$Res> {
  _$CartRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartRequestCopyWith<$Res>
    implements $CartRequestCopyWith<$Res> {
  factory _$$_CartRequestCopyWith(
          _$_CartRequest value, $Res Function(_$_CartRequest) then) =
      __$$_CartRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "product_id") int productId, int? count});
}

/// @nodoc
class __$$_CartRequestCopyWithImpl<$Res>
    extends _$CartRequestCopyWithImpl<$Res, _$_CartRequest>
    implements _$$_CartRequestCopyWith<$Res> {
  __$$_CartRequestCopyWithImpl(
      _$_CartRequest _value, $Res Function(_$_CartRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? count = freezed,
  }) {
    return _then(_$_CartRequest(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_CartRequest implements _CartRequest {
  const _$_CartRequest(
      {@JsonKey(name: "product_id") required this.productId, this.count});

  @override
  @JsonKey(name: "product_id")
  final int productId;
  @override
  final int? count;

  @override
  String toString() {
    return 'CartRequest(productId: $productId, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartRequest &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartRequestCopyWith<_$_CartRequest> get copyWith =>
      __$$_CartRequestCopyWithImpl<_$_CartRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartRequestToJson(
      this,
    );
  }
}

abstract class _CartRequest implements CartRequest {
  const factory _CartRequest(
      {@JsonKey(name: "product_id") required final int productId,
      final int? count}) = _$_CartRequest;

  @override
  @JsonKey(name: "product_id")
  int get productId;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$_CartRequestCopyWith<_$_CartRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
