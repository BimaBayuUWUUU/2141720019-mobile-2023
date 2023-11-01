import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import '../widget/home/home app_bar.dart';
import '../widget/home/home_bottom_bar.dart';
import '../widget/home/product_gird.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Gula Palu Merah',
      price: 5000,
      imageUrl: 'assets/img/gula.png',
      stock: 50,
      rating: 4.5,
    ),
    Item(
      name: 'Garam Pak Tani',
      price: 2000,
      imageUrl: 'assets/img/garam.png',
      stock: 30,
      rating: 5.0,
    ),
    Item(
      name: 'Kental Manis Asyique',
      price: 15000,
      imageUrl: 'assets/img/ktl.png',
      stock: 50,
      rating: 4.5,
    ),
    Item(
      name: 'Teh Tubruk Banteng',
      price: 10000,
      imageUrl: 'assets/img/teh.png',
      stock: 20,
      rating: 3.5,
    ),
    Item(
      name: 'Saos Lahar Merah',
      price: 3000,
      imageUrl: 'assets/img/saos.png',
      stock: 70,
      rating: 4.8,
    ),
    Item(
      name: 'Kecap Bunda Malika',
      price: 5000,
      imageUrl: 'assets/img/kecap.png',
      stock: 100,
      rating: 4.9,
    ),
  ];
  final routeName = '/item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: ProductGrid(items: items, routeName: routeName),
      ),
      bottomNavigationBar: const HomeBottomBar(),
    );
  }
}
