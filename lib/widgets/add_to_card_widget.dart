import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moxey_move/constants/theme_constants.dart';
import 'package:moxey_move/models/product/product.dart';
import 'package:moxey_move/providers/products_provider.dart';
import 'package:provider/provider.dart';

enum QuantitySwitchType { increment, decrement }

class AddToCardWidget extends StatelessWidget {
  final Product product;
  const AddToCardWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: double.infinity,
        child: Consumer<ProductsProvider>(builder: (context, prodModal, _) {
          int addedQuantity =
              prodModal.productIdCartQuantityMap[product.productId] ?? 0;
          return addedQuantity <= 0
              ? buildAddToCardWidget(
                  context: context,
                )
              : buildCartHandlerWidget(
                  quantity: addedQuantity,
                  context: context,
                );
        }),
      ),
    );
  }

  Widget buildAddToCardWidget({
    required BuildContext context,
  }) {
    return ElevatedButton.icon(
      onPressed: () {
        Provider.of<ProductsProvider>(context, listen: false).incrementQuantity(
          product,
        );
      },
      label: const Text('Add to cart'),
      icon: const Icon(Icons.add),
      iconAlignment: IconAlignment.end,
    );
  }

  Widget buildCartHandlerWidget({
    required int quantity,
    required BuildContext context,
  }) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: ElevatedButton.icon(
                iconAlignment: IconAlignment.end,
                onPressed: () {},
                label: const Text('View in cart'),
                icon: const Icon(Icons.chevron_right_outlined),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 232, 233, 233),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildQuantityButtons(
                      type: QuantitySwitchType.decrement,
                      context: context,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Text(
                        '$quantity',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    buildQuantityButtons(
                      type: QuantitySwitchType.increment,
                      context: context,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              const Icon(
                Icons.check_box_outlined,
                color: ThemeConstants.primaryGreen,
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Tyre Change Charge"),
                ),
              ),
              Consumer<ProductsProvider>(builder: (context, prodModal, _) {
                int productQuantity =
                    prodModal.productIdCartQuantityMap[product.productId] ?? 0;
                return Text("${productQuantity}x AED 3.00");
              })
            ],
          ),
        )
      ],
    );
  }

  Widget buildQuantityButtons({
    required QuantitySwitchType type,
    required BuildContext context,
  }) {
    IconData iconData = type == QuantitySwitchType.increment
        ? Icons.add_circle_outline
        : Icons.remove_circle_outline;
    return GestureDetector(
      onTap: () {
        ProductsProvider productsProvider = Provider.of(context, listen: false);

        if (type == QuantitySwitchType.increment) {
          productsProvider.incrementQuantity(product);
        } else {
          productsProvider.decrementQuantity(product);
        }
      },
      child: CircleAvatar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        radius: 15,
        child: Icon(
          iconData,
        ),
      ),
    );
  }
}
