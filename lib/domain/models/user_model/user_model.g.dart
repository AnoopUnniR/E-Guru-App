// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      json['date_joined'] as String,
      json['last_login'] as String,
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String?,
      email: json['email'] as String,
      isTeacher: json['is_teacher'] as bool,
      mobile: json['mobile_number'] as String?,
      country: json['country'] as String?,
      isPending: json['is_pending'] as bool,
      isSubmit: json['is_submit'] as bool,
      isStudent: json['is_student'] as bool,
      isActive: json['is_active'] as bool,
      isBlock: json['is_block'] as bool,
      isAdmin: json['is_admin'] as bool,
      isStaff: json['is_staff'] as bool,
      isVerified: json['is_verified'] as bool,
      isSuperuser: json['is_superuser'] as bool,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'email': instance.email,
      'mobile_number': instance.mobile,
      'country': instance.country,
      'is_pending': instance.isPending,
      'is_submit': instance.isSubmit,
      'is_student': instance.isStudent,
      'is_active': instance.isActive,
      'is_teacher': instance.isTeacher,
      'is_block': instance.isBlock,
      'is_admin': instance.isAdmin,
      'is_staff': instance.isStaff,
      'is_verified': instance.isVerified,
      'is_superuser': instance.isSuperuser,
      'date_joined': instance.dateJoined,
      'last_login': instance.lastLogin,
    };
