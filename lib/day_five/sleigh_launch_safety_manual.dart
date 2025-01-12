import 'package:advent_of_code_2024/utils.dart';

class SleighLaunchSafetyManual {
  int totalMiddlePageNumber = 0;

  SleighLaunchSafetyManual();

  calculateTotalMiddlePageNumber() async {
    String input =
        await Utils.readTextFileFromAssets('assets/day_five_input.txt');

//     String input = """
//     47|53
// 97|13
// 97|61
// 97|47
// 75|29
// 61|13
// 75|53
// 29|13
// 97|29
// 53|29
// 61|53
// 97|53
// 61|29
// 47|13
// 75|47
// 97|75
// 47|61
// 75|61
// 47|29
// 75|13
// 53|13
//
// 75,47,61,53,29
// 97,61,53,29,13
// 75,97,47,61,53
// 61,13,29
// 75,29,13
// 97,13,75,29,47
// """;

    final pageOrderingRule = RegExp(r"\d*\|\d*");
    final pageUpdateRule = RegExp(r"^\d+(,\d+)*$", multiLine: true);

    List<List<int>> matchesOrderingRule = pageOrderingRule
        .allMatches(input)
        .map((Match element) => element[0]!
            .split('|')
            .map((String element) => int.parse(element))
            .toList())
        .toList();
    List<List<int>> matchesUpdateRule = pageUpdateRule
        .allMatches(input)
        .map((Match element) => element[0]!
            .split(',')
            .map((String element) => int.parse(element))
            .toList())
        .toList();

    matchesUpdateRuleLoop:
    for (int i = 0; i < matchesUpdateRule.length; i++) {
      for (int y = 0; y < matchesUpdateRule[i].length; y++) {
        int pageNumber = matchesUpdateRule[i][y];
        List<List<int>> orderingRulesWithPageNumber = matchesOrderingRule
            .where((List<int> orderingRule) =>
                orderingRule.contains(pageNumber) &&
                matchesUpdateRule[i].contains(orderingRule
                    .firstWhere((int element) => element != pageNumber)))
            .toList();

        for (List<int> or in orderingRulesWithPageNumber) {
          bool checkIfAfter = or[0] == pageNumber &&
              matchesUpdateRule[i].contains(or[1]) &&
              y < matchesUpdateRule[i].indexWhere((int t) => t == or[1]);

          bool checkIfBefore = or[1] == pageNumber &&
              matchesUpdateRule[i].contains(or[0]) &&
              y > matchesUpdateRule[i].indexWhere((int t) => t == or[0]);

          if (checkIfAfter || checkIfBefore) {
            if (y == matchesUpdateRule[i].length - 1 &&
                or == orderingRulesWithPageNumber.last) {
              int middleListItem =
                  ((matchesUpdateRule[i].length / 2).round()) - 1;

              totalMiddlePageNumber += matchesUpdateRule[i][middleListItem];
            }
          } else {
            continue matchesUpdateRuleLoop;
          }
        }
      }
    }
  }
}
