import 'package:filter/filter.dart';
import 'package:filter/product.dart';

void main(List<String> arguments) {
  const articles = '''
    1,хлеб,Бородинский,500,5
    2,хлеб,Белый,200,15
    3,молоко,Полосатый кот,50,53
    4,молоко,Коровка,50,53
    5,вода,Апельсин,25,100
    6,вода,Бородинский,500,5
  ''';

  var list = articles.trim().split('\n');

  List<Product> products = [];

  for (var el in list) {
    var item = el.trim().split(',');

    var product = Product(
        category: item[1],
        title: item[2],
        price: int.parse(item[3]),
        quantity: int.parse(item[4]));

    products.add(product);
  }

  Filter filter = FilterCategory('молоко');

  void applyFilter(List<Product> products, Filter filter) {
    var filteredProducts = products.where((element) => filter.apply(element));

    filteredProducts.forEach(print);
  }

  applyFilter(products, filter);
}
