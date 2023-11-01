import 'package:flutter/material.dart';

class ItemDetailsBottomBar extends StatelessWidget {
  const ItemDetailsBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 50,
        color: Colors.green,
        alignment: Alignment.center,
        child: const Text(
          'Bima Bayu Saputra || 2141720019',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
