import 'package:shop/raw_product_item.dart';

class ProductItems {
  List<(String, String, String, String, int)> data = [
    ('Персик', 'Растительная пища', 'Фрукты', '2022-12-22', 5),
    ('Молоко', 'Молочные продукты', 'Напитки', '2022-12-22', 5),
    ('Кефир', 'Молочные продукты', 'Напитки', '2022-12-22', 5),
    ('Творог', 'Молочные продукты', 'Не напитки', '2022-12-22', 0),
    ('Творожок', 'Молочные продукты', 'Не напитки', '2022-12-22', 0),
    ('Творог', 'Молочные продукты', 'Не напитки', '2022-12-22', 0),
    ('Гауда', 'Молочные продукты', 'Сыры', '2022-12-22', 3),
    ('Маасдам', 'Молочные продукты', 'Сыры', '2022-12-22', 2),
    ('Яблоко', 'Растительная пища', 'Фрукты', '2022-12-04', 4),
    ('Морковь', 'Растительная пища', 'Овощи', '2022-12-23', 51),
    ('Черника', 'Растительная пища', 'Ягоды', '2022-12-25', 0),
    ('Курица', 'Мясо', 'Птица', '2022-12-18', 2),
    ('Говядина', 'Мясо', 'Не птица', '2022-12-17', 0),
    ('Телятина', 'Мясо', 'Не птица', '2022-12-17', 0),
    ('Индюшатина', 'Мясо', 'Птица', '2022-12-17', 0),
    ('Утка', 'Мясо', 'Птица', '2022-12-18', 0),
    ('Гречка', 'Растительная пища', 'Крупы', '2022-12-22', 8),
    ('Свинина', 'Мясо', 'Не птица', '2022-12-23', 5),
    ('Груша', 'Растительная пища', 'Фрукты', '2022-12-25', 5)
  ];

  Map<String, Map<String, List<String>>> organizeProducts(DateTime today) {
    List<RawProductItem> products = [];

    for (var elem in data) {
      var (name, categoryName, subcategoryName, expirationDate, qty) = elem;
      var endDay = DateTime.parse(expirationDate);

      if (qty != 0 && (today.compareTo(endDay) < 0)) {
        RawProductItem item = RawProductItem(
            name: name,
            categoryName: categoryName,
            subcategoryName: subcategoryName,
            expirationDate: endDay,
            qty: qty);

        products.add(item);
      }
    }
    return _organizeItems(products);
  }

  Map<String, Map<String, List<String>>> _organizeItems(
      List<RawProductItem> list) {
    var result =
        list.fold<Map<String, Map<String, List<String>>>>({}, (acc, item) {
      acc.putIfAbsent(item.categoryName, () => {});
      acc[item.categoryName]!.putIfAbsent(item.subcategoryName, () => []);
      acc[item.categoryName]![item.subcategoryName]!.add(item.name);
      return acc;
    });
    return result;
  }
}
