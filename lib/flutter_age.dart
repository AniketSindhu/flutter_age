library flutter_age;

class FlutterAge {
  int year;
  int day;
  int month;
  FlutterAge({DateTime birth}) {
    try {
      DateTime currentDate = DateTime.now();
      if (currentDate.isBefore(birth)) {
        throw ('You cannot take birth in the future. Please provide valid birthdate');
      }
      List<int> monthS = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
      int present_date = currentDate.day;
      int present_month = currentDate.month;
      int present_year = currentDate.year;
      int birth_date = birth.day;
      int birth_month = birth.month;
      int birth_year = birth.year;
      if (birth_date > present_date) {
        present_date = present_date + monthS[birth_month - 1];
        present_month = present_month - 1;
      }
      if (birth_month > present_month) {
        present_year = present_year - 1;
        present_month = present_month + 12;
      }
      this.day = present_date - birth_date;
      this.month = present_month - birth_month;
      this.year = present_year - birth_year;
    } catch (e) {
      print(e);
    }
  }

  String getAgeString({bool fullDate = false}) {
    if (!fullDate) {
      return '$year years old';
    } else {
      return '$year years, $month months, $day days old';
    }
  }
}
