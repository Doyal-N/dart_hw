class Product {
  final String category;
  final String title;
  final int price;
  final int quantity;

  Product(
      {required this.category,
      required this.title,
      required this.price,
      required this.quantity});

  @override
  String toString() {
    return '$category \t $title \t $price рублей \t $quantity шт';
  }
}
