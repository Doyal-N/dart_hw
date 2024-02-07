import 'package:shop/product_items.dart';

void main(List<String> arguments) {
  DateTime today = DateTime.parse('2022-12-20');
  var products = ProductItems().organizeProducts(today);

  print(products);
}
