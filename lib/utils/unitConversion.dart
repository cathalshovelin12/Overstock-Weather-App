import 'dart:math';

double convertKelvinToCelcius(double degressKelvin) {
  return _roundDouble(degressKelvin - 273.15, 2);
}

double _roundDouble(double value, int places) {
  double mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

String convertTimestampToDate(int timestamp) {
  return _getWeekdayFromPosition(
      new DateTime.fromMillisecondsSinceEpoch(timestamp * 1000, isUtc: true)
          .weekday);
}

String _getWeekdayFromPosition(int pos) {
  switch (pos) {
    case 1:
      return "Mon";
      break;
    case 2:
      return "Tue";
      break;
    case 3:
      return "Wed";
      break;
    case 4:
      return "Thu";
      break;
    case 5:
      return "Fri";
      break;
    case 6:
      return "Sat";
      break;
    case 7:
      return "Sun";
      break;
    default:
      return "N/A";
  }
}
