class UserTeacherModel {
  final int id;
  final String image;
  final String name;
  final String email;
  final String mobileNumber;
  final String country;
  final DateTime dateJoined;
  final DateTime lastLogin;
  final bool isPending;
  final bool isSubmit;
  final bool isStudent;
  final bool isTeacher;
  final bool isActive;
  final bool isBlock;
  final bool isAdmin;
  final bool isStaff;
  final bool isVerified;
  final bool isSuperuser;
  final String highestQualification;
  final String skills;
  final String address;
  final String resume;

  UserTeacherModel({
    required this.id,
    required this.image,
    required this.name,
    required this.email,
    required this.mobileNumber,
    required this.country,
    required this.dateJoined,
    required this.lastLogin,
    required this.isPending,
    required this.isSubmit,
    required this.isStudent,
    required this.isTeacher,
    required this.isActive,
    required this.isBlock,
    required this.isAdmin,
    required this.isStaff,
    required this.isVerified,
    required this.isSuperuser,
    required this.highestQualification,
    required this.skills,
    required this.address,
    required this.resume,
  });

  factory UserTeacherModel.fromJson(Map<String, dynamic> json) {
    return UserTeacherModel(
      id: json['user']['id'],
      image: json['user']['image'],
      name: json['user']['name'],
      email: json['user']['email'],
      mobileNumber: json['user']['mobile_number'],
      country: json['user']['country'],
      dateJoined: DateTime.parse(json['user']['date_joined']),
      lastLogin: DateTime.parse(json['user']['last_login']),
      isPending: json['user']['is_pending'],
      isSubmit: json['user']['is_submit'],
      isStudent: json['user']['is_student'],
      isTeacher: json['user']['is_teacher'],
      isActive: json['user']['is_active'],
      isBlock: json['user']['is_block'],
      isAdmin: json['user']['is_admin'],
      isStaff: json['user']['is_staff'],
      isVerified: json['user']['is_verified'],
      isSuperuser: json['user']['is_superuser'],
      highestQualification: json['highest_qualification'],
      skills: json['skills'],
      address: json['address'],
      resume: json['resume'],
    );
  }
}