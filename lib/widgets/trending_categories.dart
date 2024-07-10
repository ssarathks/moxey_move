import 'package:flutter/material.dart';
import 'package:moxey_move/providers/products_provider.dart';
import 'package:moxey_move/widgets/trending_categories_grid_item.dart';
import 'package:provider/provider.dart';

class TrendingCategories extends StatelessWidget {
  const TrendingCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductsProvider>(builder: (context, prodModal, _) {
      int trendingItemsLength = prodModal.trendingCategoryItems.length;
      int halfLength = trendingItemsLength ~/ 2;
      return Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...prodModal.trendingCategoryItems.sublist(0, halfLength).map(
                    (item) => TrendingCategoriesGridItem(
                      item: item,
                    ),
                  )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...prodModal.trendingCategoryItems
                  .sublist(halfLength, trendingItemsLength)
                  .map(
                    (item) => TrendingCategoriesGridItem(
                      item: item,
                    ),
                  )
            ],
          ),
        ],
      );
    });
  }
}
