class Product {
  final int? id;
  final String name;
  final int qty;
  final double price;
  final String image;

  Product({
    this.id,
    required this.name,
    required this.qty,
    required this.price,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'qty': qty,
      'price': price,
      'image': image,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      name: map['name'],
      qty: map['qty'],
      price: map['price'],
      image: map['image'],
    );
  }
}
