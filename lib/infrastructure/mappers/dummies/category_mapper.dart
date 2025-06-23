import 'package:flutter/material.dart';
import 'package:listie/domain/entities/entities.dart';
import 'package:listie/infrastructure/models/models.dart';

class CategoryMapper {
  static final Map<int, IconData> categoryIcons = {
    1: Icons.eco_outlined,
    2: Icons.apple_outlined,
    3: Icons.restaurant_outlined,
    4: Icons.local_cafe_outlined,
    5: Icons.bakery_dining_outlined,
    6: Icons.cake_outlined,
    7: Icons.grass_outlined,
    8: Icons.fastfood_outlined,
    9: Icons.shower_outlined,
    10: Icons.more_horiz_outlined,
  };

  static IconData getCategoryIcon(int category) {
    return categoryIcons[category] ?? Icons.devices_other_outlined;
  }

  static Category localDummyCategoryToEntity(CategoryDatum category) =>
      Category(
        id: category.id,
        title: category.name,
        color: category.color,
        icon: getCategoryIcon(category.id),
      );
}
