import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:listie/domain/datasources/domain_datasources.dart';
import 'package:listie/domain/entities/item.dart';
import 'package:listie/infrastructure/mappers/mappers.dart';
import 'package:listie/infrastructure/models/models.dart';

class ItemsLocalDatasource implements ItemsDatasource {
  Future<ItemsDummy> getItemsFromLocalData() async {
    final String itemDummyResponse = await rootBundle.loadString(
      'assets/dummy_items.json',
    );
    final Map<String, dynamic> itemsDummyData = jsonDecode(itemDummyResponse);
    return ItemsDummy.fromJson(itemsDummyData);
  }

  @override
  Future<List<Item>> getItems() async {
    final dummyLocalItems = await getItemsFromLocalData();
    final List<Item> items =
        dummyLocalItems.data.map(ItemMapper.localDummyItemToEntity).toList();
    return items;
  }
}
