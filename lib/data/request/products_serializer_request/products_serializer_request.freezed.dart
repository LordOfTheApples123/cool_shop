// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_serializer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsSerializerRequest {
  @JsonKey(name: "city_fias", includeIfNull: false)
  String? get cityFias => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: "category_ids")
  List<int> get categoryIds => throw _privateConstructorUsedError;
  @JsonKey(name: "product_ids")
  List<int> get productIds => throw _privateConstructorUsedError;
  @JsonKey(name: "sort_by", includeIfNull: false)
  String? get sortBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsSerializerRequestCopyWith<ProductsSerializerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsSerializerRequestCopyWith<$Res> {
  factory $ProductsSerializerRequestCopyWith(ProductsSerializerRequest value,
          $Res Function(ProductsSerializerRequest) then) =
      _$ProductsSerializerRequestCopyWithImpl<$Res, ProductsSerializerRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "city_fias", includeIfNull: false) String? cityFias,
      @JsonKey(includeIfNull: false) String? brand,
      @JsonKey(name: "category_ids") List<int> categoryIds,
      @JsonKey(name: "product_ids") List<int> productIds,
      @JsonKey(name: "sort_by", includeIfNull: false) String? sortBy});
}

/// @nodoc
class _$ProductsSerializerRequestCopyWithImpl<$Res,
        $Val extends ProductsSerializerRequest>
    implements $ProductsSerializerRequestCopyWith<$Res> {
  _$ProductsSerializerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityFias = freezed,
    Object? brand = freezed,
    Object? categoryIds = null,
    Object? productIds = null,
    Object? sortBy = freezed,
  }) {
    return _then(_value.copyWith(
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIds: null == categoryIds
          ? _value.categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      productIds: null == productIds
          ? _value.productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsSerializerRequestCopyWith<$Res>
    implements $ProductsSerializerRequestCopyWith<$Res> {
  factory _$$_ProductsSerializerRequestCopyWith(
          _$_ProductsSerializerRequest value,
          $Res Function(_$_ProductsSerializerRequest) then) =
      __$$_ProductsSerializerRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "city_fias", includeIfNull: false) String? cityFias,
      @JsonKey(includeIfNull: false) String? brand,
      @JsonKey(name: "category_ids") List<int> categoryIds,
      @JsonKey(name: "product_ids") List<int> productIds,
      @JsonKey(name: "sort_by", includeIfNull: false) String? sortBy});
}

/// @nodoc
class __$$_ProductsSerializerRequestCopyWithImpl<$Res>
    extends _$ProductsSerializerRequestCopyWithImpl<$Res,
        _$_ProductsSerializerRequest>
    implements _$$_ProductsSerializerRequestCopyWith<$Res> {
  __$$_ProductsSerializerRequestCopyWithImpl(
      _$_ProductsSerializerRequest _value,
      $Res Function(_$_ProductsSerializerRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityFias = freezed,
    Object? brand = freezed,
    Object? categoryIds = null,
    Object? productIds = null,
    Object? sortBy = freezed,
  }) {
    return _then(_$_ProductsSerializerRequest(
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIds: null == categoryIds
          ? _value._categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      productIds: null == productIds
          ? _value._productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_ProductsSerializerRequest implements _ProductsSerializerRequest {
  const _$_ProductsSerializerRequest(
      {@JsonKey(name: "city_fias", includeIfNull: false) this.cityFias,
      @JsonKey(includeIfNull: false) this.brand,
      @JsonKey(name: "category_ids") required final List<int> categoryIds,
      @JsonKey(name: "product_ids") required final List<int> productIds,
      @JsonKey(name: "sort_by", includeIfNull: false) this.sortBy})
      : _categoryIds = categoryIds,
        _productIds = productIds;

  @override
  @JsonKey(name: "city_fias", includeIfNull: false)
  final String? cityFias;
  @override
  @JsonKey(includeIfNull: false)
  final String? brand;
  final List<int> _categoryIds;
  @override
  @JsonKey(name: "category_ids")
  List<int> get categoryIds {
    if (_categoryIds is EqualUnmodifiableListView) return _categoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryIds);
  }

  final List<int> _productIds;
  @override
  @JsonKey(name: "product_ids")
  List<int> get productIds {
    if (_productIds is EqualUnmodifiableListView) return _productIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productIds);
  }

  @override
  @JsonKey(name: "sort_by", includeIfNull: false)
  final String? sortBy;

  @override
  String toString() {
    return 'ProductsSerializerRequest(cityFias: $cityFias, brand: $brand, categoryIds: $categoryIds, productIds: $productIds, sortBy: $sortBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsSerializerRequest &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            const DeepCollectionEquality()
                .equals(other._categoryIds, _categoryIds) &&
            const DeepCollectionEquality()
                .equals(other._productIds, _productIds) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cityFias,
      brand,
      const DeepCollectionEquality().hash(_categoryIds),
      const DeepCollectionEquality().hash(_productIds),
      sortBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsSerializerRequestCopyWith<_$_ProductsSerializerRequest>
      get copyWith => __$$_ProductsSerializerRequestCopyWithImpl<
          _$_ProductsSerializerRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsSerializerRequestToJson(
      this,
    );
  }
}

abstract class _ProductsSerializerRequest implements ProductsSerializerRequest {
  const factory _ProductsSerializerRequest(
      {@JsonKey(name: "city_fias", includeIfNull: false) final String? cityFias,
      @JsonKey(includeIfNull: false) final String? brand,
      @JsonKey(name: "category_ids") required final List<int> categoryIds,
      @JsonKey(name: "product_ids") required final List<int> productIds,
      @JsonKey(name: "sort_by", includeIfNull: false)
      final String? sortBy}) = _$_ProductsSerializerRequest;

  @override
  @JsonKey(name: "city_fias", includeIfNull: false)
  String? get cityFias;
  @override
  @JsonKey(includeIfNull: false)
  String? get brand;
  @override
  @JsonKey(name: "category_ids")
  List<int> get categoryIds;
  @override
  @JsonKey(name: "product_ids")
  List<int> get productIds;
  @override
  @JsonKey(name: "sort_by", includeIfNull: false)
  String? get sortBy;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsSerializerRequestCopyWith<_$_ProductsSerializerRequest>
      get copyWith => throw _privateConstructorUsedError;
}
