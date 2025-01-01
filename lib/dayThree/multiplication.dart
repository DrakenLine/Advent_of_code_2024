import 'package:advent_of_code_2024/utils.dart';

class Multiplication {
  int result = 0;

  Multiplication();

  calculateResult() async {
    String input =
        await Utils.readTextFileFromAssets('assets/day_three_input.txt');

    final findWhatToDo = RegExp(
      r"^(.*?)(?=don't\(\))|(?<=do\(\)).*?(?=don't\(\))|(?<=do\(\)).*",
      dotAll: true,
    );
    final findMul = RegExp(r'mul\(\d+,\d+\)');
    final extractFirstNumber = RegExp(r'\d*(?=,)');
    final extractLastNumber = RegExp(r'(?<=,)\d*');

    Iterable<Match> matches = findWhatToDo.allMatches(input);

    for (final Match m in matches) {
      Iterable<Match> mulMatches = findMul.allMatches(m[0]!);
      for (final Match mulM in mulMatches) {
        String match = mulM[0]!;
        int firstNumber = int.parse(extractFirstNumber.firstMatch(match)![0]!);
        int secondNumber = int.parse(extractLastNumber.firstMatch(match)![0]!);
        result += firstNumber * secondNumber;
      }
    }
  }
}
