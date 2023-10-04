import 'person.dart';

class Racer extends Person {
  int _levelSkill = 10;
  final String currentRace;
  int _experience = 2;

  Racer({required this.currentRace, required super.age, required super.name});

  int getExperience() => _experience;
  void increaseExperience(int value) =>
      {value >= 0 ? _experience += value : _experience = _experience};

  int getLevel() => _levelSkill;
  void increaseLevel(int value) =>
      {value >= 0 ? _levelSkill += value : _levelSkill = _levelSkill};

  @override
  String toString() {
    String racer = '''
      Гонщик $_levelSkill уровня
      заезд - $currentRace
      уровень мастерства - $_levelSkill
    ''';
    return super.toString() + racer;
  }
}
