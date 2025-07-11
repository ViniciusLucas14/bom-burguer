import 'package:equatable/equatable.dart';

class ItemModel extends Equatable {
  final int id;
  final String name;
  final double price;
  final String image;

  const ItemModel({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  ItemModel copyWith({int? id, String? name, double? price, String? image}) {
    return ItemModel(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      image: image ?? this.image,
    );
  }

  @override
  List<Object> get props => [id, name, price, image];
}
