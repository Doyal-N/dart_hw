import 'package:filter/product.dart';

abstract interface class Filter {
  bool apply(Product product);
}

class FilterCategory implements Filter {
  final String category;

  FilterCategory(this.category);

  @override
  bool apply(Product product) {
    return product.category == category;
  }
}

class FilterQuantity implements Filter {
  final int quantity;

  FilterQuantity(this.quantity);

  @override
  bool apply(Product product) {
    return product.quantity < quantity;
  }
}

class FilterPrice implements Filter {
  final int price;

  FilterPrice(this.price);

  @override
  bool apply(Product product) {
    return product.price <= price;
  }
}
