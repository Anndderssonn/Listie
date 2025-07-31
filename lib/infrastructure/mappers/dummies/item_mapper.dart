import 'package:listie/domain/entities/entities.dart';
import 'package:listie/infrastructure/models/models.dart';

class ItemMapper {
  static Item localDummyItemToEntity(ItemsDatum item) => Item(
    id: item.id,
    title: item.name,
    quantity: item.quantity,
    categoryId: item.category,
  );
}
