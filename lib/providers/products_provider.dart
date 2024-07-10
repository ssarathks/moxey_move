import 'package:flutter/material.dart';
import 'package:moxey_move/constants/dummy_data.dart';
import 'package:moxey_move/models/product/product.dart';
import 'package:moxey_move/models/product/product_group.dart';
import 'package:moxey_move/models/product/trending_category_item.dart';

class ProductsProvider extends ChangeNotifier {
  final List<TrendingCategoryItem> _trendingCategoryItems =
      trendingCategoryItemsDummy;
  final Map<String, List<ProductGroup>> _categoryCodeProductGroupsMap =
      categoryCodeProductGroupsMapDummy;

  List<TrendingCategoryItem> get trendingCategoryItems =>
      [..._trendingCategoryItems];
  Map<String, List<ProductGroup>> get categoryCodeProductGroupsMap =>
      {..._categoryCodeProductGroupsMap};

  Map<String, int> productIdCartQuantityMap = {};

  int _totalCartItem = 0;

  int get totalCartItem => _totalCartItem;

  void incrementQuantity(Product product) {
    if (productIdCartQuantityMap[product.productId] == null) {
      productIdCartQuantityMap[product.productId] = 1;
      _totalCartItem += 1;
      notifyListeners();
      return;
    }
    productIdCartQuantityMap[product.productId] =
        productIdCartQuantityMap[product.productId]! + 1;
    _totalCartItem += 1;

    notifyListeners();
  }

  void decrementQuantity(Product product) {
    if (productIdCartQuantityMap[product.productId] == null ||
        productIdCartQuantityMap[product.productId] == 0) {
      return;
    }
    productIdCartQuantityMap[product.productId] =
        productIdCartQuantityMap[product.productId]! - 1;
    _totalCartItem -= 1;
    notifyListeners();
  }
}
