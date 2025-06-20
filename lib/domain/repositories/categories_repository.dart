import 'package:listie/domain/entities/entities.dart';

abstract class CategoriesRepository {
  Future<List<Category>> getCategories();
}
