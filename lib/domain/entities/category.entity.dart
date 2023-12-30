import 'package:ecommerce/domain/entities/base.entity.dart';

class Category implements Model{
  int? id;
  final String name;
  final String image;
Category(this.id,this.name,this.image);
  Category.create({required this.name, required this.image});

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      map['id'],
      map['name'],
      map['image'],
    );
  }
}
