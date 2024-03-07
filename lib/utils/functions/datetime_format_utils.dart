import 'package:intl/intl.dart';

class FormatDateTime {
  String dateToMonth(value) {
    var dateTime = DateFormat('yyyy-MM-dd').parse(value.toString());
    return DateFormat('MMM').format(dateTime);
  }

  String dateToDay(value) {
    var dateTime = DateFormat('yyyy-MM-dd').parse(value.toString());
    return DateFormat('d').format(dateTime);
  }

  String dateToYear(value) {
    var dateTime = DateFormat('yyyy-MM-dd').parse(value.toString());
    return DateFormat('yyyy').format(dateTime);
  }

  String dateToSimpleDate(value) {
    DateTime dateTime = DateTime.parse(value);

    DateFormat formatter = DateFormat('dd/MM/yyyy HH:mm');
    String formattedDate = formatter.format(dateTime);
    return formattedDate.toString().split(' ')[0] +
        ' ' +
        'a' +
        ' ' +
        formattedDate.toString().split(' ')[1];
  }

  String formatTime(value) {
    final dateTime = DateTime.parse(value);
    final format = DateFormat('HH:mm');
    final clockString = format.format(dateTime);
    return clockString;
  }

  String formatTimeFromSeconds(int totalSeconds) {
    int hours = totalSeconds ~/ 3600; // Obtient les heures
    int remainingSeconds = totalSeconds %
        3600; // Obtient le reste des secondes après avoir calculé les heures

    int minutes = remainingSeconds ~/ 60; // Obtient les minutes
    int seconds = remainingSeconds % 60; // Obtient les secondes restantes

    // Construit la chaîne de format en fonction des heures, des minutes et des secondes
    String formattedTime = hours > 0
        ? '${hours.toString().padLeft(2, '0')}:'
        : ''; // Ajoute les heures si elles sont supérieures à zéro
    formattedTime +=
        '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}'; // Ajoute les minutes et les secondes

    return formattedTime;
  }
}
