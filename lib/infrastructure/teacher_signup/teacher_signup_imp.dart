import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_model.dart';
import 'package:eguru_app/infrastructure/shared_prefernce/token_handler.dart';

class TeacherSignupRepository {
  final dio = Dio();

  Future<Response> teacherSignupRequest(
      TeacherApplyModel teacherApplyModel) async {
    String? token = await SaveToken.retreiveToken();
    FormData form = FormData.fromMap({
      "mobile_number":teacherApplyModel.mobileNumber ,
      "address":teacherApplyModel.address,
      "country": teacherApplyModel.country,
      "highest_qualification": teacherApplyModel.highestQualification,
      "skills":teacherApplyModel.skills,
      "name":teacherApplyModel.name,
      'resume': await MultipartFile.fromFile(
          teacherApplyModel.resume.path,
          filename: teacherApplyModel.resume.path.split('/').last,
        ),
      'image':  await MultipartFile.fromFile(teacherApplyModel.image.path),
      'is_submit':"true",
    });
    // Add custom headers
    Map<String, dynamic> headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'multipart/form-data',
    };
    
    try {
      Response response = await dio.post(Url.teacherRegister,
          data: form, options: Options(headers: headers));
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
  
