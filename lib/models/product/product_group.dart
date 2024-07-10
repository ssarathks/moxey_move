import 'package:moxey_move/models/product/product.dart';

class ProductGroup {
  final String title;
  final List<Product> productList;

  const ProductGroup({
    required this.title,
    required this.productList,
  });
}
