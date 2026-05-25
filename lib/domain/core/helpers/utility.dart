import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_template/domain/core/constants/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Utility {
  static Future<void> launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      log('Launching url: $url');
      await launchUrlString(url);
    } else {
      log('Could not launch $url');
    }
  }

  static Future<void> sendSupportEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: AppConstants.mailTo,
      query:
          'subject=${AppConstants.mailSubject}&body=${AppConstants.mailBody}',
    );

    final String url = params.toString();
    launchURL(url);
  }

  static StringBuffer errorMessages(Response<dynamic>? res) {
    final response = res;
    final StringBuffer errorMessage = StringBuffer();
    if (response != null && response.data['message'] != null) {
      errorMessage.write(response.data['message']);
    }

    return errorMessage;
  }
}
