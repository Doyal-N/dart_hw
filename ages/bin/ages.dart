import 'package:ages/ages.dart';

void main(List<String> arguments) {
  const int currentYear = 2023;
  const int partCars = 6;

  List<AgriculturalMachinery> allCars = [];

  final mapBefore2010 = <Countries, List<Territory>>{
    Countries.brazil: [
      Territory(
        34,
        ['Кукуруза'],
        [
          AgriculturalMachinery(
            'Трактор Степан',
            DateTime(2001),
          ),
          AgriculturalMachinery(
            'Культиватор Сережа',
            DateTime(2007),
          ),
        ],
      ),
    ],
    Countries.russia: [
      Territory(
        14,
        ['Картофель'],
        [
          AgriculturalMachinery(
            'Трактор Гена',
            DateTime(1993),
          ),
          AgriculturalMachinery(
            'Гранулятор Антон',
            DateTime(2009),
          ),
        ],
      ),
      Territory(
        19,
        ['Лук'],
        [
          AgriculturalMachinery(
            'Трактор Гена',
            DateTime(1993),
          ),
          AgriculturalMachinery(
            'Дробилка Маша',
            DateTime(1990),
          ),
        ],
      ),
    ],
    Countries.turkish: [
      Territory(
        43,
        ['Хмель'],
        [
          AgriculturalMachinery(
            'Комбаин Василий',
            DateTime(1998),
          ),
          AgriculturalMachinery(
            'Сепаратор Марк',
            DateTime(2005),
          ),
        ],
      ),
    ],
  };

  final mapAfter2010 = {
    Countries.turkish: [
      Territory(
        22,
        ['Чай'],
        [
          AgriculturalMachinery(
            'Каток Кирилл',
            DateTime(2018),
          ),
          AgriculturalMachinery(
            'Комбаин Василий',
            DateTime(1998),
          ),
        ],
      ),
    ],
    Countries.japan: [
      Territory(
        3,
        ['Рис'],
        [
          AgriculturalMachinery(
            'Гидравлический молот Лена',
            DateTime(2014),
          ),
        ],
      ),
    ],
    Countries.spain: [
      Territory(
        29,
        ['Арбузы'],
        [
          AgriculturalMachinery(
            'Мини-погрузчик Максим',
            DateTime(2011),
          ),
        ],
      ),
      Territory(
        11,
        ['Табак'],
        [
          AgriculturalMachinery(
            'Окучник Саша',
            DateTime(2010),
          ),
        ],
      ),
    ],
  };

  var data = receiveCars(mapAfter2010, allCars);
  data = receiveCars(mapBefore2010, data);
  data.sort((car, car2) => car.releaseDate.compareTo(car2.releaseDate));
  var uniqCars = data.toSet();

  middleReleaseDates(uniqCars, currentYear, partCars);
}
