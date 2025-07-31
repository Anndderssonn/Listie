import 'package:listie/domain/datasources/domain_datasources.dart';
import 'package:listie/domain/entities/item.dart';

class ItemLocalRepositoryImpl implements ItemsDatasource {
  final ItemsDatasource itemsDatasource;

  ItemLocalRepositoryImpl({required this.itemsDatasource});

  @override
  Future<List<Item>> getItems() {
    return itemsDatasource.getItems();
  }
}
