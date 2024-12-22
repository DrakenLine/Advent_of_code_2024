class Utils {
  static stringToList(String value) {
    final whitespaceRE = RegExp(r"\s+");
    return value
        .trim()
        .replaceAll(whitespaceRE, " ")
        .replaceAll(" ", ", ")
        .split(',')
        .map<int>((e) {
      return int.parse(e);
    }).toList();
  }

  static stringToEmbeddedList(String value) {
    return value.trim().split('\n').map<List<int>>((e) {
      return e.split(' ').map<int>((e) => int.parse(e)).toList();
    }).toList();
  }
}
