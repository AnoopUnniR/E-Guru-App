import 'package:dio/dio.dart';
import 'package:eguru_app/infrastructure/shared_prefernce/token_handler.dart';

class HeaderToken {
  static Future<Options> headerToken() async {
    String? token = await SaveToken.retreiveToken();
    // Add custom headers
    Map<String, dynamic> headers = {
      'Authorization': 'Bearer $token',
    };
    return Options(headers: headers);
  }
}
