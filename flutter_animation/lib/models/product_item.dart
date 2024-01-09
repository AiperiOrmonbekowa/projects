// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_animation/models/product.dart';

class ProductItem {
  int quanity;
  final Product product;
  ProductItem({
    this.quanity = 1,
    required this.product,
  });

  void increment() {
    quanity++;
  }

  // void add(){}
}
