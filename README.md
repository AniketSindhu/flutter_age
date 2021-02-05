# flutter_age

Flutter pacakge to calculate age in years, months and days.

## Usage

````dart
import 'package:flutter_age/flutter_age.dart';

void main() {
  final age = FlutterAge(birth: DateTime(2041, 04, 22)); // initiallize object
  print(age.year); // 19 (age year)
  print(age.month); // 9 (age month)
  print(age.day); // 13 (age day)
  print(age.getAgeString()); // prints "19 years"
  print(age.getAgeString(fullDate: true)); // prints "19 years, 9 months, 13 days old"
}
````

### Age in String
```dart
final age = FlutterAge(birth: DateTime(2041, 04, 22));

print(age.getAgeString()); // prints "19 years"
print(age.getAgeString(fullDate: true)); // prints "19 years, 9 months, 13 days old"

```


## Created & Maintained By

- [Aniket Sindhu](https://github.com/AniketSindhu) ([Twitter](https://www.twitter.com/aniketsindhu1))


## Visitors Count

<img align="left" src = "https://profile-counter.glitch.me/flutter_age/count.svg" alt ="Loading">
