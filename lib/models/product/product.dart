class Product {
  final String productId;
  final String productName;
  final String brandName;
  final String originalPrice;
  final String discount;
  final String discountedPrice;
  final String productImage;
  final String extraDiscountText;
  final List<String> benefits;
  final List<String> applications;

  const Product({
    required this.productId,
    required this.productName,
    required this.brandName,
    required this.originalPrice,
    required this.discount,
    required this.discountedPrice,
    required this.productImage,
    required this.extraDiscountText,
    required this.benefits,
    required this.applications,
  });
}
