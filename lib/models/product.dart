class Product {
  int? id;
  final String name;
  final double price;
  final int quantity;
  final String image;

  Product(
      {this.id,
      required this.name,
      required this.price,
      required this.quantity,
      required this.image});

  factory Product.fromMap(Map<String, Product> json) => Product(
        id: json['id'] as int?,
        name: json['name'] as String,
        price: json['price'] as double,
        quantity: json['quantity'] as int,
        image: json['image'] as String,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'price': price,
        'quantity': quantity,
        'image': image,
      };
}
