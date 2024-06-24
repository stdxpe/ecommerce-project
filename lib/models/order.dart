import 'package:ecommerce_project/models/product.dart';

class Order {
  final String id;
  final List<Product> products;
  // final Map<Product, int> productsAndAmounts;
  // final Map<String(ProductId), int> productsAndAmounts;
  final double totalPrice;
  final String createdAt;

  Order({
    required this.id,
    required this.products,
    // required this.productsAndAmounts,
    required this.totalPrice,
    required this.createdAt,
  });
}
