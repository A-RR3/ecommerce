import 'package:ecommerce/data/db/online/dio_helper.dart';
import 'package:ecommerce/domain/entities/category.entity.dart';
import 'package:ecommerce/domain/interactors/interfaces/categories.interface.dart';

class CategoriesInteractorImp implements CategoriesInteractor {
  @override
  Future<List<Category>> getAllCategories() async {
    return await DioHelper.dio.get('categories').then((res) {
      final categories = <Category>[];
      if (res.statusCode == 200) {
        for (var category in res.data) {
          categories.add(Category.fromMap(category));
        }
      }
      return categories;
    }).catchError((err) => <Category>[]);
  }


}
