import 'package:sport/super_racer.dart';
import 'package:sport/racer.dart';

void main(List<String> arguments) {
  var sRacer = SuperRacer(age: 20, name: 'Max', currentRace: 'Sun Valley');
  var racer = Racer(age: 20, name: 'Max', currentRace: 'Big Hill');
  print(racer);
  print(sRacer);
}
