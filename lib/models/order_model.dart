class OrderModel {
  final int? id;
  double total;
  double subtotal;
  double discount;
  String itemsList;
  String paymentMethod;
  DateTime date;

  OrderModel({
    this.id,
    required this.total,
    required this.subtotal,
    required this.discount,
    required this.itemsList,
    required this.paymentMethod,
    required this.date,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        id: json['id'],
        total: json['total'],
        subtotal: json['subtotal'],
        discount: json['discount'],
        itemsList: json['itemsList'],
        paymentMethod: json['paymentMethod'],
        date: DateTime.parse(json['date']),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'total': total,
        'subtotal': subtotal,
        'discount': discount,
        'itemsList': itemsList,
        'paymentMethod': paymentMethod,
        'date': date.toIso8601String(),
      };
}
