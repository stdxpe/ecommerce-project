import 'package:ecommerce_project/models/product.dart';

class Order {
  final String id;
  final List<Product> products;
  final double totalPrice;
  final String createdAt;

  Order({
    required this.id,
    required this.products,
    required this.totalPrice,
    required this.createdAt,
  });
}
