import 'package:ecommerce/domain/entities/base.entity.dart';

class Product implements Model {
  int? id;
  final String name;
  final int price;
  final List<dynamic> images;

  Product._(this.id, this.images, this.name, this.price);
  Product.create(
      {required this.name, required this.price, required this.images});

  factory Product.fromMap(Map<String, dynamic> json) {
    return Product._(
      json['id'],
      json['images'],
      json['title'],
      json['price'],
    );
  }
}
