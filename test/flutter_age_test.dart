import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_age/flutter_age.dart';

void main() {
  final age = FlutterAge(birth: DateTime(2041, 04, 22)); // initiallize object
  print(age.year); // 19 (age year)
  print(age.month); // 9 (age month)
  print(age.day); // 13 (age day)
  print(age.getAgeString()); // prints "19 years"
  print(age.getAgeString(
      fullDate: true)); // prints "19 years, 9 months, 13 days old"
}
