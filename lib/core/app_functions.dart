import '../features/home/domain/entities/meal.dart';

abstract class AppFunctions {
  static String showPrice(int value) {
    String stringValue = value.toString();
    int length = stringValue.length;

    if (length <= 3) {
      return stringValue;
    }

    List<String> parts = [];

    for (int i = length - 1; i >= 0; i -= 3) {
      int start = i - 2;
      if (start < 0) {
        start = 0;
      }
      parts.add(stringValue.substring(start, i + 1));
    }

    final result = parts.reversed.join(",");
    return '$result UZS';
  }

  static String calculateSumma(List<MealEntity> entities, List<int> numbers) {
    int summa = 0;
    for (int i = 0; i < numbers.length; i++) {
      summa += entities[i].price * numbers[i];
    }
    return showPrice(summa);
  }
}
