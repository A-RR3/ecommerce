import 'package:ecommerce/domain/entities/category.entity.dart';

abstract interface class CategoriesInteractor {
  Future<List<Category?>> getAllCategories();
}
