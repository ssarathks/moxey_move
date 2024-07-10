import 'package:flutter/material.dart';
import 'package:moxey_move/constants/theme_constants.dart';
import 'package:moxey_move/models/product/product.dart';
import 'package:moxey_move/widgets/add_to_card_widget.dart';
import 'package:moxey_move/widgets/common_scaffold.dart';
import 'package:moxey_move/widgets/limited_time_deal_widget.dart';
import 'package:moxey_move/widgets/location_switcher.dart';
import 'package:moxey_move/widgets/scaffold_header.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  const ProductDetailsScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: '${product.brandName} ${product.productName}',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LocationSwitcher(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // HORIZONTAL SCROLLABLE IMAGES START
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Image.asset(
                        product.productImage,
                      ),
                      itemCount: 5,
                    ),
                  ),
                  // HORIZONTAL SCROLLABLE IMAGES END

                  // PRIZE AND OFFER DETAILS START
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              product.discountedPrice,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: product.discount,
                                    style: const TextStyle(
                                      color: ThemeConstants.primaryGreen,
                                    ),
                                  ),
                                  const WidgetSpan(
                                    child: SizedBox(
                                      width: 10,
                                    ),
                                  ),
                                  TextSpan(
                                    text: product.discountedPrice,
                                    style: const TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const LimitedTimeDealWidget()
                      ],
                    ),
                  ),
                  // PRICE AND OFFER DETAIL END

                  AddToCardWidget(product: product),
                  const ScaffoldHeader(headerText: 'Product Details'),
                  Column(
                    children: buildDetailRows(
                      context: context,
                    ),
                  ),
                  const ScaffoldHeader(headerText: 'Product Description'),
                  const Text(
                    "The SP 320 truck tires are commercial grade tires specifically designed for medium to heavy-duty trucks. They are known for their durability, long tread life, and resistance to cuts and punctures. These tires are optimized for highway driving and provide a smooth and stable ride with good traction on wet and dry roads. The SP 320 tires also feature an enhanced tread pattern to improve fuel efficiency and reduce road noise. They are suitable for a variety of applications, including regional and long-haul transport, construction, and waste management.",
                  ),
                  const ScaffoldHeader(headerText: 'Applications'),
                  buildBulltedList(
                    items: product.applications,
                  ),
                  const ScaffoldHeader(headerText: 'Benefits'),
                  buildBulltedList(
                    items: product.benefits,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildBulltedList({
    required List<String> items,
  }) {
    List<Widget> rows = items
        .map(
          (item) => Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text("\u2022"),
              ),
              Expanded(child: Text(item)),
            ],
          ),
        )
        .toList();
    return Column(
      children: rows,
    );
  }

  List<Widget> buildDetailRows({
    required BuildContext context,
  }) {
    Map<String, String> productExtraDetails = {
      'Country of Origin': 'China',
      'Brand': product.brandName,
      'Category': 'Tyres',
      'Size': '31580R225',
    };
    List<Widget> rows = [];
    productExtraDetails.forEach(
      (key, value) {
        rows.add(
          Row(
            children: [
              Expanded(
                child: Text(
                  key,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: ThemeConstants.greyTextColor,
                      ),
                ),
              ),
              Expanded(
                child: Text(
                  value,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              )
            ],
          ),
        );
      },
    );
    return rows;
  }
}
