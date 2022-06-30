
import 'dart:io';

import 'package:intl/intl.dart';

class ConvertUtils {
  String formatDateToLocale(String dateTime){

    //DateTime parsedDateFormat = DateFormat("yyyy-MM-ddTHH:mm:ssZ").parseUTC(dateTime).toLocal(); // parse String datetime to DateTime and get local date time
    DateTime parsedDateFormat = DateTime.parse(dateTime).toLocal(); // parse String datetime to DateTime and get local date time

    String formatedDateTime = DateFormat('MM-dd-yyyy hh:mm a').format(parsedDateFormat).toString();

    return formatedDateTime;
  }

  Future<bool> checkInternetConnection() async {
    bool activeConnection = false;
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        activeConnection = true;
      }
    } on SocketException catch (_) {
      activeConnection = false;
    }
    return activeConnection;
  }
}