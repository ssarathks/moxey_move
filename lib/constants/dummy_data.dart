import 'package:flutter/material.dart';
import 'package:moxey_move/models/product/product.dart';
import 'package:moxey_move/models/product/product_group.dart';
import 'package:moxey_move/models/product/trending_category_item.dart';
import 'package:moxey_move/models/ui/drawer_list_item.dart';

import '../models/ui/bottom_navigation_item.dart';

const List<String> benefitsDummy = [
  "Durability: The tires are built with robust construction to withstand the demands of heavy-duty trucking.",
  "Long tread life: The SP 320 tires are engineered to provide a long tread life, reducing the need for frequent replacements.",
  "Cut and puncture resistance: The tires are designed with robust sidewalls and a reinforced tread compound to reduce the risk of cuts and punctures.",
  "Good traction: The tread pattern provides good traction on both wet and dry roads, ensuring stability and safety on the road.",
  "Smooth ride: The optimised design of the tires provides a smooth and stable ride for truck drivers and their cargo.",
  "Fuel efficiency: The enhanced tread pattern helps to reduce rolling resistance and improve fuel efficiency.",
  "Reduced road noise: The tires are designed to minimise road noise, providing a more comfortable ride for drivers and passengers.",
];

const List<String> applicationsDummy = [
  "Regional and long-haul transport: These tires are designed for highway driving and can handle the demands of long-distance hauling.",
  "Construction: The durability and cut resistance of the tires make them a good choice for construction and heavy-duty trucks.",
  "Waste management: The tires are suitable for waste management trucks that operate in tough conditions and require a robust tire.",
  "Delivery and logistics: The SP 320 tires are ideal for delivery and logistics trucks that need a tire that can handle frequent stops and starts.",
  "Agricultural: The tires are suitable for use on agricultural vehicles and provide good traction on rural roads.",
];

List<BottomNavigationItem> bottomNavidationItems = [
  BottomNavigationItem(
    title: 'Home',
    icon: const Icon(
      Icons.home_outlined,
    ),
  ),
  BottomNavigationItem(
    title: 'Store',
    icon: const Icon(
      Icons.store_mall_directory_outlined,
    ),
  ),
  BottomNavigationItem(
    title: 'Transactions',
    icon: const Icon(
      Icons.money_outlined,
    ),
  ),
  BottomNavigationItem(
    title: 'Earn',
    icon: const Icon(
      Icons.stars_rounded,
    ),
  ),
  BottomNavigationItem(
    title: 'Recharge',
    icon: const Icon(
      Icons.charging_station_outlined,
    ),
  ),
];

List<TrendingCategoryItem> trendingCategoryItemsDummy = [
  const TrendingCategoryItem(
    code: 'TYRE',
    title: 'Tyre',
    imagePath: 'assets/images/tyre.png',
    categoryBgColor: Color.fromARGB(255, 0, 165, 114),
  ),
  const TrendingCategoryItem(
    code: 'FUEL',
    title: 'Fuel',
    imagePath: 'assets/images/fuel.png',
    categoryBgColor: Color.fromARGB(255, 253, 186, 18),
  ),
  const TrendingCategoryItem(
    code: 'LUBRICANTS',
    title: 'Lubricants',
    imagePath: 'assets/images/lubricants.png',
    categoryBgColor: Color.fromARGB(255, 83, 197, 213),
  ),
  const TrendingCategoryItem(
    code: 'BATTERIES',
    title: 'Batteries',
    imagePath: 'assets/images/batteries.png',
    categoryBgColor: Color.fromARGB(255, 202, 100, 255),
  ),
  const TrendingCategoryItem(
    code: 'SPARES',
    title: 'Spares & Accessories',
    imagePath: 'assets/images/spares.png',
    categoryBgColor: Color.fromARGB(255, 255, 165, 114),
  ),
  const TrendingCategoryItem(
    code: 'SERVICES',
    title: 'Services',
    imagePath: 'assets/images/services.png',
    categoryBgColor: Color.fromARGB(255, 106, 198, 255),
  ),
];

Map<String, List<ProductGroup>> categoryCodeProductGroupsMapDummy = {
  'TYRE': [
    const ProductGroup(
      title: 'Best in Longmarch',
      productList: [
        Product(
          productId: '1',
          productName: 'LM288',
          brandName: 'longmarch',
          originalPrice: 'AED 650.00',
          discount: '3.1%',
          discountedPrice: 'AED 630',
          productImage: 'assets/images/tyre_product.png',
          extraDiscountText: 'Get more discount with MoXey card',
          benefits: benefitsDummy,
          applications: applicationsDummy,
        ),
        Product(
          productId: '2',
          productName: 'LM255',
          brandName: 'longmarch',
          originalPrice: 'AED 650.00',
          discount: '3.1%',
          discountedPrice: 'AED 630',
          productImage: 'assets/images/tyre_product.png',
          extraDiscountText: 'Get more discount with MoXey card',
          benefits: benefitsDummy,
          applications: applicationsDummy,
        ),
        Product(
          productId: '3',
          productName: 'LM274',
          brandName: 'longmarch',
          originalPrice: 'AED 650.00',
          discount: '3.1%',
          discountedPrice: 'AED 630',
          productImage: 'assets/images/tyre_product.png',
          extraDiscountText: 'Get more discount with MoXey card',
          benefits: benefitsDummy,
          applications: applicationsDummy,
        ),
      ],
    ),
    const ProductGroup(
      title: 'Best in Ecostar',
      productList: [
        Product(
          productId: '1',
          productName: 'ECO34',
          brandName: 'longmarch',
          originalPrice: 'AED 650.00',
          discount: '3.1%',
          discountedPrice: 'AED 630',
          productImage: 'assets/images/tyre_product.png',
          extraDiscountText: 'Get more discount with MoXey card',
          benefits: benefitsDummy,
          applications: applicationsDummy,
        ),
        Product(
          productId: '2',
          productName: 'ECO23',
          brandName: 'longmarch',
          originalPrice: 'AED 650.00',
          discount: '3.1%',
          discountedPrice: 'AED 630',
          productImage: 'assets/images/tyre_product.png',
          extraDiscountText: 'Get more discount with MoXey card',
          benefits: benefitsDummy,
          applications: applicationsDummy,
        ),
      ],
    ),
  ]
};

List<DrawerListItem> topDrawerListItemDummy = [
  const DrawerListItem(
    title: 'KYC Status',
    iconData: Icons.description_outlined,
    hasInternalNavigation: true,
  ),
  const DrawerListItem(
    title: 'Profile Details',
    iconData: Icons.person_outline,
    hasInternalNavigation: true,
  ),
  const DrawerListItem(
    title: 'My Cart',
    iconData: Icons.shopping_cart_outlined,
    hasInternalNavigation: true,
  ),
  const DrawerListItem(
    title: 'My Purchases',
    iconData: Icons.shopping_bag_outlined,
    hasInternalNavigation: true,
  ),
  const DrawerListItem(
    title: 'Change MPIN',
    iconData: Icons.description_outlined,
    hasInternalNavigation: true,
  ),
  const DrawerListItem(
    title: 'My Bills & Recharges',
    iconData: Icons.receipt_long_outlined,
    hasInternalNavigation: true,
  ),
];

List<DrawerListItem> bottomDrawerListItemDummy = [
  const DrawerListItem(
    title: 'Customer Support',
    iconData: Icons.phone_forwarded_outlined,
    hasInternalNavigation: false,
  ),
  const DrawerListItem(
    title: 'Setting',
    iconData: Icons.settings_outlined,
    hasInternalNavigation: true,
  ),
  const DrawerListItem(
    title: 'Logout',
    iconData: Icons.logout_outlined,
    hasInternalNavigation: false,
  ),
];
