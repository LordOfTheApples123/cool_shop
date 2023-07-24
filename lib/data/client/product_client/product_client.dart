import 'package:auto_route/annotations.dart';
import 'package:cool_shop/data/model/calculated_cart/calculated_cart.dart';
import 'package:cool_shop/data/model/product/product.dart';
import 'package:cool_shop/data/model/product_card/product_card.dart';
import 'package:cool_shop/data/pagination_wrapper/response_wrapper.dart';
import 'package:cool_shop/data/request/cart_request/cart_request.dart';
import 'package:cool_shop/data/request/fav_request/favorites_request.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'product_client.g.dart';

@RestApi()
abstract class ProductClient {
  factory ProductClient(Dio dio, {String baseUrl}) = _ProductClient;

  @POST("/catalog/products/")
  Future<PaginationWrapper<Product>> getPage(@Query("page") String page);

  //Product == CatalogProduct, разве что required в разных местах
  //а ещё здесь нет пагинации, жизнь обман

  //Хотя нет разница есть, у Product double discount,
  //У Catalog product String discount(╯°□°)╯︵ ┻━┻
  @GET("/favorites/")
  Future<List<Product>> getFav();

  @POST("/favorites/")
  Future<void> addFav(
    @Body() FavoritesRequest fav,
  );

  @DELETE("/favorites/")
  Future<void> deleteFave(
    @Body() FavoritesRequest fav,
  );

  @GET("/catalog/product/")
  Future<ProductCard> getCard(@PathParam("product_id") int id);

  @POST("/cart/calculate/")
  Future<CalculatedCart> getCalculatedCart();

  @POST("/cart/cart/")
  Future<CalculatedCart> addToCart(
    @Body() CartRequest request,
  );

  @PUT("/cart/cart/")
  Future<CalculatedCart> updateCart(
    @Body() CartRequest request,
  );

  @DELETE("/cart/cart/")
  Future<CalculatedCart> deleteFromCart(
    @Body() CartRequest request,
  );
}
