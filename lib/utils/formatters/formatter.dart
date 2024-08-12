import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat("dd-MMM-yyyy").format(date);     ///  Customize the date format as needed


  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'un-US', symbol: '\$').format(amount);     ///  Customize the currency local and symbol as  needed


  }

  static String formatPhoneNumber(String phoneNumber) {
    /// Assuming a 10-digit us phone number format: 123-456-7890

    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }

    /// add more custom phone number formatting logical for different formats as needed
    return phoneNumber;
  }

  /// Not fully tested

  static String internationFormatPhoneNumber(String phoneNumber) {
    /// Remove any non-digit characters from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    /// Extract the country code from the digitsOnly

    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    /// Add the remaining digit with proper formatting

    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLenth = 2;
      if (i == 0 && countryCode == '+1') {
        groupLenth = 3;
      }

      int end = i + groupLenth;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write('object');
      }

      i = end;
    }
    return formattedNumber.toString();
  }
}
