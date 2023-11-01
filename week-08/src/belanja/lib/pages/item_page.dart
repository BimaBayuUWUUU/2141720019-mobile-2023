import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import '../widget/item/item_details_app_bar.dart';
import '../widget/item/item_details_body.dart';
import '../widget/item/item_details_bottom_bar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: const ItemDetailsAppBar(),
      body: ItemDetailsBody(item: itemArgs),
      bottomNavigationBar: const ItemDetailsBottomBar(),
    );
  }
}
