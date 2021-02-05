import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_age/flutter_age.dart';

void main() {
  final age = FlutterAge(birth: DateTime(2041, 04, 22));
  print(age.year);
  print(age.month);
  print(age.day);
  print(age.getAgeString(fullDate: true));
}
