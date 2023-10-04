import 'package:poker/poker_player.dart';
import 'package:poker/strategy.dart';

void main() {
  final opponent = PokerPlayer();

  // ignore: prefer_function_declarations_over_variables
  final Strategy fakeStrategy = (p0, p1) {
    for (var el in p0) {
      print('Player 1: $el');
    }
    for (var el in p1) {
      print('Player 2: $el');
    }
    return 5.0;
  };

  opponent.calculateProbabilities(
    ['Nine of diamonds', 'king of hearts'],
    fakeStrategy,
  );
}
