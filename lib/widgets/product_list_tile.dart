import 'package:flutter/material.dart';
import 'package:moxey_move/constants/theme_constants.dart';
import 'package:moxey_move/models/product/product.dart';
import 'package:moxey_move/screens/product_details_screen.dart';
import 'package:moxey_move/widgets/limited_time_deal_widget.dart';

class ProductListTile extends StatelessWidget {
  final Product product;
  const ProductListTile({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    Color greenTextColor = const Color.fromARGB(255, 34, 180, 112);
    return GestureDetector(
      onTap: () => _listItemTapHandler(context),
      child: Card(
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 10,
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Flexible(
                    flex: 4,
                    child: Image.asset(
                      height: double.infinity,
                      'assets/images/tyre_product.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: double.infinity,
                          child: LimitedTimeDealWidget(),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(product.brandName),
                            Text(
                              product.productName,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const Text('Size - 31580R255'),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: product.discountedPrice,
                                    style: const TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  const WidgetSpan(
                                      child: SizedBox(
                                    width: 10,
                                  )),
                                  TextSpan(
                                    text: product.discount,
                                    style: TextStyle(
                                      color: greenTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              product.originalPrice,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(3),
              color: const Color.fromARGB(51, 34, 180, 112),
              child: Text(
                product.extraDiscountText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: ThemeConstants.primaryGreen,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _listItemTapHandler(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ProductDetailsScreen(
          product: product,
        ),
      ),
    );
  }
}
