String dateFormat(DateTime date) {
  const List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  String day = date.day.toString();
  String monthName = months[date.month - 1];
  String year = date.year.toString();

  return "$day $monthName $year";
}
