import 'package:ecommerce/domain/entities/products.entity.dart';

abstract interface class ProductsInteractor {
  Future<List<Product>> getAllProducts();
  Future<Product?> getProductById(int id);
  Future<List<Product>> getProductsByCategory(int categoryId);
}
