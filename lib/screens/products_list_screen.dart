import 'package:flutter/material.dart';
import 'package:moxey_move/models/product/product_group.dart';
import 'package:moxey_move/providers/products_provider.dart';
import 'package:moxey_move/widgets/common_scaffold.dart';
import 'package:moxey_move/widgets/product_list_tile.dart';
import 'package:moxey_move/widgets/scaffold_header.dart';
import 'package:provider/provider.dart';

class ProductsListScreen extends StatelessWidget {
  static const routeName = '/products-list';
  const ProductsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Receiving route argument of named routes
    Map routeArgs = ModalRoute.of(context)?.settings.arguments as Map;
    String itemCode = routeArgs['itemCode'];
    String itemName = routeArgs['itemName'];
    return Consumer<ProductsProvider>(builder: (context, prodModal, _) {
      List<ProductGroup> productGroups =
          prodModal.categoryCodeProductGroupsMap[itemCode] ?? [];
      return CommonScaffold(
        title: itemName,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (ProductGroup group in productGroups)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ScaffoldHeader(
                      headerText: '${group.title}(${group.productList.length})',
                    ),
                    ...group.productList.map(
                      (product) => ProductListTile(
                        product: product,
                      ),
                    ),
                  ],
                )
            ],
          ),
        ),
      );
    });
  }
}
