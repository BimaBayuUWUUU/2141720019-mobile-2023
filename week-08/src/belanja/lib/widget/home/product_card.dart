import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ProductCard extends StatelessWidget {
  final Item item;
  final Function onTap;

  const ProductCard({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Card(
          elevation: 5,
          margin: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: item.name,
                child: Image.asset(
                  item.imageUrl,
                  width: 150,
                  height: 150,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                item.name.toString(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Stok: ${item.stock.toString()}',
                style: const TextStyle(
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    ' ${item.rating.toString()}',
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
