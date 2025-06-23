import 'package:listie/domain/datasources/domain_datasources.dart';
import 'package:listie/domain/entities/category.dart';

class CategoryLocalRespositoryImpl implements CategoriesDatasource {
  final CategoriesDatasource categoriesDatasource;

  CategoryLocalRespositoryImpl({required this.categoriesDatasource});

  @override
  Future<List<Category>> getCategories() {
    return categoriesDatasource.getCategories();
  }
}
