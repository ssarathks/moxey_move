import 'package:flutter/material.dart';
import 'package:moxey_move/models/product/product_group.dart';
import 'package:moxey_move/models/product/trending_category_item.dart';
import 'package:moxey_move/providers/products_provider.dart';
import 'package:moxey_move/screens/products_list_screen.dart';
import 'package:provider/provider.dart';

class TrendingCategoriesGridItem extends StatelessWidget {
  final TrendingCategoryItem item;
  const TrendingCategoriesGridItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final double containerSize = MediaQuery.of(context).size.width * 0.28;
    return GestureDetector(
      onTap: () => _itemTapHandler(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: containerSize,
            height: containerSize,
            decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Colors.white,
                    item.categoryBgColor,
                  ],
                ),
                borderRadius: BorderRadius.circular(11)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                fit: BoxFit.contain,
                item.imagePath,
              ),
            ),
          ),
          SizedBox(
            width: containerSize,
            child: Text(
              item.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }

  void _itemTapHandler(BuildContext context) {
    ProductsProvider productsProvider =
        Provider.of<ProductsProvider>(context, listen: false);

    List<ProductGroup> _productGroupsOfItem =
        productsProvider.categoryCodeProductGroupsMap[item.code] ?? [];

    if (_productGroupsOfItem.isEmpty) {
      _emptyGroupNavigationHandler(context);
      return;
    }
    Map routeArgs = {
      'itemCode': item.code,
      'itemName': item.title,
    };
    Navigator.of(context).pushNamed(
      ProductsListScreen.routeName,
      arguments: routeArgs,
    );
  }

  void _emptyGroupNavigationHandler(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Center(child: Text('Coming soon...')),
        );
      },
    );
  }
}
