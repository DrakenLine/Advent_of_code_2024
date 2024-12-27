import 'package:advent_of_code_2024/utils.dart';

class Multiplication {
  int result = 0;

  Multiplication();

  calculateResult() async {
    String input =
        await Utils.readTextFileFromAssets('assets/day_three_input.txt');
    // String input =
    //     'xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))';
    final findMul = RegExp(r'mul\(\d+,\d+\)');
    final extractFirstNumber = RegExp(r'\d*(?=,)');
    final extractLastNumber = RegExp(r'(?<=,)\d*');

    Iterable<Match> matches = findMul.allMatches(input);

    for (final Match m in matches) {
      String match = m[0]!;
      print(match);
      int firstNumber = int.parse(extractFirstNumber.firstMatch(match)![0]!);
      int secondNumber = int.parse(extractLastNumber.firstMatch(match)![0]!);
      result += firstNumber * secondNumber;
    }
  }
}
