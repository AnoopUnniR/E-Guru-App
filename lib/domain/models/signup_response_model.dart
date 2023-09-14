
//model for response received while signing up a new user
class SignupResponse {
  final String name;
  final String? image;
  final String email;
  final int id;

  SignupResponse({required this.name,this.image,required this.email,required this.id});


  factory SignupResponse.fromJson(Map<String, dynamic>json){
    return 
    SignupResponse(name: json["name"],
    email: json["email"],
    id: json["id"],
    image: json["image"]);
  }
}
