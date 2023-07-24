// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductCard _$ProductCardFromJson(Map<String, dynamic> json) {
  return _ProductCard.fromJson(json);
}

/// @nodoc
mixin _$ProductCard {
  int get id => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: "old_price")
  String? get oldPrice => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String? get article => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;
  num? get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCardCopyWith<ProductCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCardCopyWith<$Res> {
  factory $ProductCardCopyWith(
          ProductCard value, $Res Function(ProductCard) then) =
      _$ProductCardCopyWithImpl<$Res, ProductCard>;
  @useResult
  $Res call(
      {int id,
      String? picture,
      String price,
      @JsonKey(name: "old_price") String? oldPrice,
      String brand,
      String? article,
      String? name,
      String? description,
      bool? available,
      num? discount});
}

/// @nodoc
class _$ProductCardCopyWithImpl<$Res, $Val extends ProductCard>
    implements $ProductCardCopyWith<$Res> {
  _$ProductCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? picture = freezed,
    Object? price = null,
    Object? oldPrice = freezed,
    Object? brand = null,
    Object? article = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? available = freezed,
    Object? discount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCardCopyWith<$Res>
    implements $ProductCardCopyWith<$Res> {
  factory _$$_ProductCardCopyWith(
          _$_ProductCard value, $Res Function(_$_ProductCard) then) =
      __$$_ProductCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? picture,
      String price,
      @JsonKey(name: "old_price") String? oldPrice,
      String brand,
      String? article,
      String? name,
      String? description,
      bool? available,
      num? discount});
}

/// @nodoc
class __$$_ProductCardCopyWithImpl<$Res>
    extends _$ProductCardCopyWithImpl<$Res, _$_ProductCard>
    implements _$$_ProductCardCopyWith<$Res> {
  __$$_ProductCardCopyWithImpl(
      _$_ProductCard _value, $Res Function(_$_ProductCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? picture = freezed,
    Object? price = null,
    Object? oldPrice = freezed,
    Object? brand = null,
    Object? article = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? available = freezed,
    Object? discount = freezed,
  }) {
    return _then(_$_ProductCard(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCard implements _ProductCard {
  const _$_ProductCard(
      {required this.id,
      this.picture,
      required this.price,
      @JsonKey(name: "old_price") this.oldPrice,
      required this.brand,
      this.article,
      this.name,
      this.description,
      this.available,
      this.discount});

  factory _$_ProductCard.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCardFromJson(json);

  @override
  final int id;
  @override
  final String? picture;
  @override
  final String price;
  @override
  @JsonKey(name: "old_price")
  final String? oldPrice;
  @override
  final String brand;
  @override
  final String? article;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final bool? available;
  @override
  final num? discount;

  @override
  String toString() {
    return 'ProductCard(id: $id, picture: $picture, price: $price, oldPrice: $oldPrice, brand: $brand, article: $article, name: $name, description: $description, available: $available, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductCard &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, picture, price, oldPrice,
      brand, article, name, description, available, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCardCopyWith<_$_ProductCard> get copyWith =>
      __$$_ProductCardCopyWithImpl<_$_ProductCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCardToJson(
      this,
    );
  }
}

abstract class _ProductCard implements ProductCard {
  const factory _ProductCard(
      {required final int id,
      final String? picture,
      required final String price,
      @JsonKey(name: "old_price") final String? oldPrice,
      required final String brand,
      final String? article,
      final String? name,
      final String? description,
      final bool? available,
      final num? discount}) = _$_ProductCard;

  factory _ProductCard.fromJson(Map<String, dynamic> json) =
      _$_ProductCard.fromJson;

  @override
  int get id;
  @override
  String? get picture;
  @override
  String get price;
  @override
  @JsonKey(name: "old_price")
  String? get oldPrice;
  @override
  String get brand;
  @override
  String? get article;
  @override
  String? get name;
  @override
  String? get description;
  @override
  bool? get available;
  @override
  num? get discount;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCardCopyWith<_$_ProductCard> get copyWith =>
      throw _privateConstructorUsedError;
}
