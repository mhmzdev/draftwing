part of '../configs.dart';

final _date = DateFormat('MMM dd, y');
final _dateTimeWords = DateFormat('MMM. dd, yyyy HH:mmaaa');

extension SuperDate on DateTime {
  DateTime get today => DateTime(year, month, day);

  DateTime get endOfDay => add(const Duration(days: 1)).subtract(
    Duration(
      hours: hour,
      minutes: minute,
      seconds: second,
      milliseconds: millisecond,
      microseconds: microsecond,
    ),
  );

  String get date => _date.format(this);

  String get dateTimeWords => _dateTimeWords.format(toLocal());

  String get timeAgo {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(1.days);

    if (isAfter(today)) {
      return DateFormat('h:mm a').format(this);
    } else if (isAfter(yesterday)) {
      return 'Yesterday';
    } else {
      return DateFormat('EEE, MMM d').format(this);
    }
  }

  bool get isToday {
    final today = DateTime.now();
    return year == today.year && month == today.month && day == today.day;
  }

  bool isSameDate(DateTime other) {
    return day == other.day && month == other.month && year == other.year;
  }

  DateTime get dateOnly => DateTime(year, month, day);
}

extension SuperAge on DateTime? {
  int get toAge {
    if (this == null) {
      return 0;
    }
    return DateTime.now().year - this!.year;
  }
}
