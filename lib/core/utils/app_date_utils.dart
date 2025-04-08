class AppDateUtils {
  String timeAgo(DateTime date, {bool numericDates = true}) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 365) {
      final years = (difference.inDays / 365).floor();
      return (numericDates)
          ? '$years ${_getYearText(years)} назад'
          : 'Год назад';
    } else if (difference.inDays > 30) {
      final months = (difference.inDays / 30).floor();
      return (numericDates)
          ? '$months ${_getMonthText(months)} назад'
          : 'Месяц назад';
    } else if (difference.inDays > 0) {
      return (numericDates)
          ? '${difference.inDays} ${_getDayText(difference.inDays)} назад'
          : 'Вчера';
    } else if (difference.inHours > 0) {
      return (numericDates)
          ? '${difference.inHours} ${_getHourText(difference.inHours)} назад'
          : 'Час назад';
    } else if (difference.inMinutes > 0) {
      return (numericDates)
          ? '${difference.inMinutes} ${_getMinuteText(difference.inMinutes)} назад'
          : 'Минуту назад';
    } else {
      return 'Только что';
    }
  }

  String _getYearText(int years) {
    if (years % 100 >= 11 && years % 100 <= 19) {
      return 'лет';
    }
    switch (years % 10) {
      case 1:
        return 'год';
      case 2:
      case 3:
      case 4:
        return 'года';
      default:
        return 'лет';
    }
  }

  String _getMonthText(int months) {
    if (months % 100 >= 11 && months % 100 <= 19) {
      return 'месяцев';
    }
    switch (months % 10) {
      case 1:
        return 'месяц';
      case 2:
      case 3:
      case 4:
        return 'месяца';
      default:
        return 'месяцев';
    }
  }

  String _getDayText(int days) {
    if (days % 100 >= 11 && days % 100 <= 19) {
      return 'дней';
    }
    switch (days % 10) {
      case 1:
        return 'день';
      case 2:
      case 3:
      case 4:
        return 'дня';
      default:
        return 'дней';
    }
  }

  String _getHourText(int hours) {
    if (hours % 100 >= 11 && hours % 100 <= 19) {
      return 'часов';
    }
    switch (hours % 10) {
      case 1:
        return 'час';
      case 2:
      case 3:
      case 4:
        return 'часа';
      default:
        return 'часов';
    }
  }

  String _getMinuteText(int minutes) {
    if (minutes % 100 >= 11 && minutes % 100 <= 19) {
      return 'минут';
    }
    switch (minutes % 10) {
      case 1:
        return 'минуту';
      case 2:
      case 3:
      case 4:
        return 'минуты';
      default:
        return 'минут';
    }
  }
}
