import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'product_card.dart';

class ProductGrid extends StatelessWidget {
  final List<Item> items;
  final String routeName;

  ProductGrid({required this.items, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ProductCard(
          item: item,
          onTap: () {
            Navigator.pushNamed(context, routeName, arguments: item);
          },
        );
      },
    );
  }
}
