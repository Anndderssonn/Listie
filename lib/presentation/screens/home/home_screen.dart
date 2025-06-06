import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listie')),
      body: _Items(),
    );
  }
}

class _Items extends StatelessWidget {
  // TODO: Mock Items
  final List<ShoppingItem> items = [
    ShoppingItem(
      icon: Icons.local_pizza,
      colorIcon: Color(0xFFD6F5E6),
      title: 'Pizza',
      quantity: 'x2',
    ),
    ShoppingItem(
      icon: Icons.local_drink,
      colorIcon: Color(0xFFE3F2FD),
      title: 'Juice',
      quantity: '1 L',
    ),
    ShoppingItem(
      icon: Icons.apple,
      colorIcon: Color(0xFFFFE9D6),
      title: 'Apples',
      quantity: 'x6',
    ),
  ];

  _Items();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return _Item(item: items[index]);
      },
    );
  }
}

class _Item extends StatelessWidget {
  final ShoppingItem item;

  const _Item({required this.item});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textStyles = Theme.of(context).textTheme;

    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: item.colorIcon,
          child: Icon(item.icon, color: colors.onSecondaryContainer),
        ),
        title: Text(item.title, style: textStyles.bodyMedium),
        trailing: Text(item.quantity, style: textStyles.titleMedium),
      ),
    );
  }
}

// TODO: Mock class
class ShoppingItem {
  final IconData icon;
  final Color colorIcon;
  final String title;
  final String quantity;

  ShoppingItem({
    required this.icon,
    required this.colorIcon,
    required this.title,
    required this.quantity,
  });
}
