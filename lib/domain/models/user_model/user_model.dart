import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

//model for a normal user
@JsonSerializable()
class UserModel {
  final int id;
  final String name;
  final String? image;
  final String email;
  @JsonKey(name: 'mobile_number')
  final String? mobile;
  final String? country;
  @JsonKey(name: 'is_pending')
  final bool isPending;
  @JsonKey(name: 'is_submit')
  final bool isSubmit;
  @JsonKey(name: 'is_student')
  final bool isStudent;
  @JsonKey(name: 'is_active')
  final bool isActive;
  @JsonKey(name: 'is_teacher')
  final bool isTeacher;
  @JsonKey(name: 'is_block')
  final bool isBlock;
  @JsonKey(name: 'is_admin')
  final bool isAdmin;
  @JsonKey(name: 'is_staff')
  final bool isStaff;
  @JsonKey(name: 'is_verified')
  final bool isVerified;
  @JsonKey(name: 'is_superuser')
  final bool isSuperuser;
  @JsonKey(name: 'date_joined')
  final String dateJoined;
  @JsonKey(name: 'last_login')
  final String lastLogin;

  UserModel(this.dateJoined, this.lastLogin, 
      {required this.id,
      required this.name,
      this.image,
      required this.email,
      required this.isTeacher,
      required this.mobile,
      required this.country,
      required this.isPending,
      required this.isSubmit,
      required this.isStudent,
      required this.isActive,
      required this.isBlock,
      required this.isAdmin,
      required this.isStaff,
      required this.isVerified,
      required this.isSuperuser});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
