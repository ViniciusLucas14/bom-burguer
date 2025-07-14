class CartModel {
  final int? id; 
  final bool isCombo;
  final String name;
  final String img;
  final double total;
  final double subTotal;
  final double discount;
  final String itemsList;
  final DateTime date;

  CartModel({
    this.id, 
    required this.isCombo,
    required this.name,
    required this.img,
    required this.total,
    required this.subTotal,
    required this.discount,
    required this.itemsList,
    required this.date,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        id: json['id'], 
        isCombo: json['isCombo'],
        name: json['name'],
        img: json['img'],
        total: json['total'],
        subTotal: json['subTotal'],
        discount: json['discount'],
        itemsList: json['itemsList'],
        date: DateTime.parse(json['date']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'isCombo': isCombo,
        'name': name,
        'img': img,
        'total': total,
        'subTotal': subTotal,
        'discount': discount,
        'itemsList': itemsList,
        'date': date.toIso8601String(),
      };
}
