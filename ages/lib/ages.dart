enum Countries { brazil, russia, turkish, spain, japan }

class Territory {
  int areaInHectare;
  List<String> crops;
  List<AgriculturalMachinery> machineries;

  Territory(
    this.areaInHectare,
    this.crops,
    this.machineries,
  );
}

class AgriculturalMachinery {
  final String id;
  final DateTime releaseDate;

  AgriculturalMachinery(
    this.id,
    this.releaseDate,
  );

  // Переопределяем оператор "==", что бы сравнивать объекты по значению
  @override
  bool operator ==(Object? other) {
    if (other is! AgriculturalMachinery) return false;
    if (other.id == id && other.releaseDate == releaseDate) return true;

    return false;
  }

  @override
  int get hashCode => id.hashCode ^ releaseDate.hashCode;
}

List<AgriculturalMachinery> receiveCars(
    Map<Countries, List<Territory>> data, List<AgriculturalMachinery> storage) {
  for (var v in data.values) {
    for (var value in v) {
      for (var el in value.machineries) {
        storage.add(el);
      }
    }
  }
  return storage;
}

middleReleaseDates(Set<AgriculturalMachinery> cars, int currentYear, int part) {
  final sumAges = cars.fold<double>(
      0, (state, car) => (state + currentYear - car.releaseDate.year));
  final sumPartAges = cars.take(part).fold<double>(
      0, (state, car) => (state + currentYear - car.releaseDate.year));
  var middleAgeAllCars = (sumAges / cars.length).round();
  var middleAgeOldCars = (sumPartAges / part).round();

  print(
      'Средний возраст техники $middleAgeAllCars лет, средний возраст самой старой техники $middleAgeOldCars года');
}
