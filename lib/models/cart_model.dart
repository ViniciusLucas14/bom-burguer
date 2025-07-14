class CartModel {
  int id;
  String name;
  double price;
  String images;
  int type;
  CartModel(
      {required this.id,
      required this.name,
      required this.price,
      required this.images,
      required this.type});

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
      id: json['id'],
      price: json['price'],
      name: json['name'],
      images: json['images'],
      type: json['type']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'price': price,
        'images': images,
        'type': type,
      };
}
