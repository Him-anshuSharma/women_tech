class MailData {
  late String date;
  late String time;
  MailData(String text) {
    Iterable<Match> matches = dateTimeRegex.allMatches(text);
    getDateTime(matches);
  }

  RegExp dateTimeRegex = RegExp(
      r'(\d{1,2})[./-](\d{1,2})[./-](\d{2}|\d{4})\s+(\d{1,2}):(\d{1,2})(:(\d{1,2}))?\s*(am|pm)?',
      caseSensitive: false);

// String text = "This is a sample text that contains a date and time in the format 10-03-2023 3:45 PM and another one in the format 03/10/23 2:30:15am.";

  void getDateTime(Iterable<Match> matches) {
    for (Match match in matches) {
      int year = int.parse(match.group(3)!);
      if (year < 100) {
        year += 2000;
      }
      int month = int.parse(match.group(1)!);
      int day = int.parse(match.group(2)!);
      int hour = int.parse(match.group(4)!);
      int minute = int.parse(match.group(5)!);
      int second = match.group(7) != null ? int.parse(match.group(7)!) : 0;
      String amPm = match.group(8)!;

      if (amPm == 'pm' && hour < 12) {
        hour += 12;
      }
      if (amPm == 'am' && hour == 12) {
        hour = 0;
      }

      DateTime dateTime = DateTime(year, month, day, hour, minute, second);
      date = dateTime.toIso8601String().substring(0, 10);
      time = dateTime.toIso8601String().substring(11, 19);
    }
  }
}
