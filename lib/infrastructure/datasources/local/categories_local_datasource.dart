import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:listie/domain/datasources/domain_datasources.dart';
import 'package:listie/domain/entities/entities.dart';
import 'package:listie/infrastructure/mappers/mappers.dart';
import 'package:listie/infrastructure/models/models.dart';

class CategoriesLocalDatasource implements CategoriesDatasource {
  @override
  Future<List<Category>> getCategories() async {
    final String categoriesDummyRes = await rootBundle.loadString(
      'assets/categories_dummy.json',
    );
    final Map<String, dynamic> categoryDummyData = jsonDecode(
      categoriesDummyRes,
    );
    final dummyLocalCategories = CategoryDummy.fromJson(categoryDummyData);
    final List<Category> categories =
        dummyLocalCategories.data
            .map(
              (category) => CategoryMapper.localDummyCategoryToEntity(category),
            )
            .toList();
    return categories;
  }
}
