import 'mechanic.dart';
import 'racer.dart';

class SuperRacer extends Racer implements Mechanic {
  static const int _experience = 20;
  static const int _levelSkill = 50;

  SuperRacer(
      {required super.age, required super.name, required super.currentRace});

  @override
  int getExperience() => _experience;
  @override
  int getLevel() => _levelSkill;

  @override
  String toString() {
    String superRacer = '''
      Имя - ${super.name},
      возраст - ${super.age}
      Гонщик высокого класса
      больше 100 побед
    ''';
    return superRacer;
  }

  @override
  bool addFuel() {
    print('Add full tank');
    return true;
  }

  @override
  bool changeWeels() {
    print('Change old weel');
    return true;
  }
}
