import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemDetailsBody extends StatelessWidget {
  final Item item;

  const ItemDetailsBody({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        children: [
          Hero(
            tag: item.name,
            child: Image.asset(
              item.imageUrl,
              width: 500,
              height: 500,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.green,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name.toString(),
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    const Text(
                      'Stok: ',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text(
                      item.stock.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Text(
                      'Rating: ',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 24,
                    ),
                    Text(
                      item.rating.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
