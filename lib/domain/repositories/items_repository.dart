import 'package:listie/domain/entities/entities.dart';

abstract class ItemsRepository {
  Future<List<Item>> getItems();
}
