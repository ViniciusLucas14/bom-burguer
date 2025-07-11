class ItemModel {
  int id;
  String name;
  double price;
  String images;

  ItemModel(
      {required this.id,
      required this.name,
      required this.price,
      required this.images});

  factory ItemModel.fromJson(Map<String, dynamic> json) => ItemModel(
      id: json['id'],
      price: json['price'],
      name: json['name'],
      images: json['images']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'price': price,
        'images': images,
      };
} 
