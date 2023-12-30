import 'dart:convert';

import 'package:ecommerce/data/db/online/dio_helper.dart';
import 'package:ecommerce/domain/entities/products.entity.dart';
import 'package:ecommerce/domain/interactors/interfaces/products.interface.dart';

class ProductInteractorImpl implements ProductsInteractor {
  @override
  Future<List<Product>> getAllProducts() async {
    return await DioHelper.dio.get('products').then((res) {
      final products = <Product>[];
      if (res.statusCode == 200) {
        for (var product in res.data) {
          products.add(Product.fromMap(product));
        }
      }
      var prods = products;
      return products;
    }).catchError((e) {
      return <Product>[];
    });
  }

  @override
  Future<Product?> getProductById(int id) async {
    return await DioHelper.dio.get('products/:$id').then((data) {
      // print('response:\n$data ');
      if (data.statusCode == 200) {
        final map = json.decode(data.data);
        final Product product = Product.fromMap(map);
        return product;
      }
    }).catchError((err) => null);
  }

  @override
  Future<List<Product>> getProductsByCategory(int categoryId) async {
    return await DioHelper.dio
        .get('products?categoryId=$categoryId')
        .then((res) {
      final products = <Product>[];
      if (res.statusCode == 200) {
        for (var product in res.data) {
          products.add(Product.fromMap(product));
        }
      }
      return products;
    });
  }
}
