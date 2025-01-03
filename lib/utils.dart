import 'package:flutter/services.dart' show rootBundle;

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

  static stringToEmbeddedIntList(String value) {
    return value.trim().split('\n').map<List<int>>((e) {
      return e.split(' ').map<int>((e) => int.parse(e)).toList();
    }).toList();
  }

  static stringToEmbeddedList(String value) {
    return value.trim().split('\n').map<List<String>>((e) {
      return e.split('').toList();
    }).toList();
  }

  static Future<String> readTextFileFromAssets(String filePath) async {
    try {
      String fileContent = await rootBundle.loadString(filePath);
      return fileContent;
    } catch (e) {
      print("Error reading file: $e");
      return "Error loading file with path : $filePath";
    }
  }
}
