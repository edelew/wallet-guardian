class Cost {
  final int id;
  final int price;

  Cost({required this.id, required this.price});

  factory Cost.fromMap(Map<String, dynamic> json) => Cost(
        id: json['id'],
        price: json['price'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'price': price,
      };
}
