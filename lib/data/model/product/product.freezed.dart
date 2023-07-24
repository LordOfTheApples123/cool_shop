// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "old_price")
  String? get oldPrice => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get article => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "reviews_count")
  int? get reviewsCount => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  List<Badge> get badges => throw _privateConstructorUsedError;
  bool? get like => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int id,
      String? price,
      @JsonKey(name: "old_price") String? oldPrice,
      String? discount,
      String? name,
      String? article,
      String? picture,
      double? rating,
      @JsonKey(name: "reviews_count") int? reviewsCount,
      String brand,
      List<Badge> badges,
      bool? like});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = freezed,
    Object? oldPrice = freezed,
    Object? discount = freezed,
    Object? name = freezed,
    Object? article = freezed,
    Object? picture = freezed,
    Object? rating = freezed,
    Object? reviewsCount = freezed,
    Object? brand = null,
    Object? badges = null,
    Object? like = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? price,
      @JsonKey(name: "old_price") String? oldPrice,
      String? discount,
      String? name,
      String? article,
      String? picture,
      double? rating,
      @JsonKey(name: "reviews_count") int? reviewsCount,
      String brand,
      List<Badge> badges,
      bool? like});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = freezed,
    Object? oldPrice = freezed,
    Object? discount = freezed,
    Object? name = freezed,
    Object? article = freezed,
    Object? picture = freezed,
    Object? rating = freezed,
    Object? reviewsCount = freezed,
    Object? brand = null,
    Object? badges = null,
    Object? like = freezed,
  }) {
    return _then(_$_Product(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      badges: null == badges
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badge>,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_Product implements _Product {
  const _$_Product(
      {required this.id,
      this.price,
      @JsonKey(name: "old_price") this.oldPrice,
      this.discount,
      this.name,
      this.article,
      this.picture,
      this.rating,
      @JsonKey(name: "reviews_count") this.reviewsCount,
      required this.brand,
      required final List<Badge> badges,
      this.like})
      : _badges = badges;

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final int id;
  @override
  final String? price;
  @override
  @JsonKey(name: "old_price")
  final String? oldPrice;
  @override
  final String? discount;
  @override
  final String? name;
  @override
  final String? article;
  @override
  final String? picture;
  @override
  final double? rating;
  @override
  @JsonKey(name: "reviews_count")
  final int? reviewsCount;
  @override
  final String brand;
  final List<Badge> _badges;
  @override
  List<Badge> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  final bool? like;

  @override
  String toString() {
    return 'Product(id: $id, price: $price, oldPrice: $oldPrice, discount: $discount, name: $name, article: $article, picture: $picture, rating: $rating, reviewsCount: $reviewsCount, brand: $brand, badges: $badges, like: $like)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            const DeepCollectionEquality().equals(other._badges, _badges) &&
            (identical(other.like, like) || other.like == like));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      price,
      oldPrice,
      discount,
      name,
      article,
      picture,
      rating,
      reviewsCount,
      brand,
      const DeepCollectionEquality().hash(_badges),
      like);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);
}

abstract class _Product implements Product {
  const factory _Product(
      {required final int id,
      final String? price,
      @JsonKey(name: "old_price") final String? oldPrice,
      final String? discount,
      final String? name,
      final String? article,
      final String? picture,
      final double? rating,
      @JsonKey(name: "reviews_count") final int? reviewsCount,
      required final String brand,
      required final List<Badge> badges,
      final bool? like}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  int get id;
  @override
  String? get price;
  @override
  @JsonKey(name: "old_price")
  String? get oldPrice;
  @override
  String? get discount;
  @override
  String? get name;
  @override
  String? get article;
  @override
  String? get picture;
  @override
  double? get rating;
  @override
  @JsonKey(name: "reviews_count")
  int? get reviewsCount;
  @override
  String get brand;
  @override
  List<Badge> get badges;
  @override
  bool? get like;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

Badge _$BadgeFromJson(Map<String, dynamic> json) {
  return _Badge.fromJson(json);
}

/// @nodoc
mixin _$Badge {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "text_color")
  String? get textColor => throw _privateConstructorUsedError;
  String? get bgColor => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BadgeCopyWith<Badge> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeCopyWith<$Res> {
  factory $BadgeCopyWith(Badge value, $Res Function(Badge) then) =
      _$BadgeCopyWithImpl<$Res, Badge>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "text_color") String? textColor,
      String? bgColor,
      String? text,
      String? picture});
}

/// @nodoc
class _$BadgeCopyWithImpl<$Res, $Val extends Badge>
    implements $BadgeCopyWith<$Res> {
  _$BadgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? textColor = freezed,
    Object? bgColor = freezed,
    Object? text = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BadgeCopyWith<$Res> implements $BadgeCopyWith<$Res> {
  factory _$$_BadgeCopyWith(_$_Badge value, $Res Function(_$_Badge) then) =
      __$$_BadgeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "text_color") String? textColor,
      String? bgColor,
      String? text,
      String? picture});
}

/// @nodoc
class __$$_BadgeCopyWithImpl<$Res> extends _$BadgeCopyWithImpl<$Res, _$_Badge>
    implements _$$_BadgeCopyWith<$Res> {
  __$$_BadgeCopyWithImpl(_$_Badge _value, $Res Function(_$_Badge) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? textColor = freezed,
    Object? bgColor = freezed,
    Object? text = freezed,
    Object? picture = freezed,
  }) {
    return _then(_$_Badge(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_Badge implements _Badge {
  const _$_Badge(
      {required this.id,
      @JsonKey(name: "text_color") this.textColor,
      this.bgColor,
      this.text,
      this.picture});

  factory _$_Badge.fromJson(Map<String, dynamic> json) =>
      _$$_BadgeFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "text_color")
  final String? textColor;
  @override
  final String? bgColor;
  @override
  final String? text;
  @override
  final String? picture;

  @override
  String toString() {
    return 'Badge(id: $id, textColor: $textColor, bgColor: $bgColor, text: $text, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Badge &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, textColor, bgColor, text, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BadgeCopyWith<_$_Badge> get copyWith =>
      __$$_BadgeCopyWithImpl<_$_Badge>(this, _$identity);
}

abstract class _Badge implements Badge {
  const factory _Badge(
      {required final int id,
      @JsonKey(name: "text_color") final String? textColor,
      final String? bgColor,
      final String? text,
      final String? picture}) = _$_Badge;

  factory _Badge.fromJson(Map<String, dynamic> json) = _$_Badge.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "text_color")
  String? get textColor;
  @override
  String? get bgColor;
  @override
  String? get text;
  @override
  String? get picture;
  @override
  @JsonKey(ignore: true)
  _$$_BadgeCopyWith<_$_Badge> get copyWith =>
      throw _privateConstructorUsedError;
}
