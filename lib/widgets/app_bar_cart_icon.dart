import 'package:flutter/material.dart';
import 'package:moxey_move/providers/products_provider.dart';
import 'package:provider/provider.dart';

class AppBarCartIcon extends StatelessWidget {
  const AppBarCartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer<ProductsProvider>(builder: (context, prodModal, _) {
        return Badge(
          isLabelVisible: prodModal.totalCartItem > 0,
          smallSize: 15,
          child: IconButton(
            visualDensity: VisualDensity.compact,
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
            ),
          ),
        );
      }),
    );
  }
}
