import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';

class OtpVerificationRepository {
  Dio dio = Dio();
  Future<Response> optVerification({required String otp,required String id}) async {
    Response response;
    try {
      response = await dio
          .post(Url.otpVerificationurl, data: {"user_id": id, "otp": otp});
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> otpResent(String email) async {
    try {
      await dio.post(Url.otpResentUrl, data: {"email": email});
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
