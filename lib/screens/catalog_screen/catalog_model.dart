import 'package:cool_shop/data/client/product_client/product_client.dart';
import 'package:cool_shop/data/model/product/product.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

/// Default Elementary model for Catalog module
class CatalogModel extends ElementaryModel {
  CatalogModel({super.errorHandler, required this.client});

  final ProductClient client;

  int _page = 1;
  bool isMore = true;

  Future<(List<Product> content, bool isMore)> getNextPage() async {
    try {
      if (!isMore) {
        return (<Product>[], false);
      }
      final response = await client.getPage(_page.toString());


      //я не понимаю почему response.results это List<dynamic>
      final products = response.results as List<Product>;
      isMore = response.next != null;
      _page++;
      return (
        products,
        isMore,
      );
    } catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: stacktrace);
    }
    return (<Product>[], false);
  }
}
