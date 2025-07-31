import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:listie/infrastructure/datasources/infra_datasources.dart';
import 'package:listie/infrastructure/repositories/infra_repositories.dart';

final categoriesRepositoryProvider = Provider((ref) {
  return CategoryLocalRespositoryImpl(
    categoriesDatasource: CategoriesLocalDatasource(),
  );
});
