import 'package:flutter/material.dart';

class ItemDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ItemDetailsAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      title: const Text('Toko Item'),
    );
  }
}
