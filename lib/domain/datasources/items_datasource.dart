import 'package:listie/domain/entities/entities.dart';

abstract class ItemsDatasource {
  Future<List<Item>> getItems();
}
