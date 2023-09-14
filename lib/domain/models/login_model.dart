//model for the response received while logging in

class LoginCredModel {
  String message;
  String access;
  String refresh;

  LoginCredModel({required this.message,required this.access,required this.refresh});

  factory LoginCredModel.fromJson(Map<String,dynamic>json) {
    return  LoginCredModel(
      message: json["message"],
       access: json["access"],
        refresh: json["refresh"]);
  }
}
