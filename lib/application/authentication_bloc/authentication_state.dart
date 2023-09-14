part of 'authentication_bloc.dart';

abstract class AuthenticationState  {
  const AuthenticationState();

}

class AuthenticationInitial extends AuthenticationState {}
class AutheticationFailedNoInternet extends AuthenticationState {}
class AuthenticationAccessAcceptedAsAdmin extends AuthenticationState {
    final UserModel userModel;

  const AuthenticationAccessAcceptedAsAdmin(this.userModel);
}


class AuthenticationAccessAcceptedAsStudent extends AuthenticationState {
    final UserModel userModel;

  const AuthenticationAccessAcceptedAsStudent(this.userModel);
}

class AuthenticationAccessAcceptedAsTeacher extends AuthenticationState {
  final UserTeacherModel userTeacherModel;

  const AuthenticationAccessAcceptedAsTeacher(this.userTeacherModel);
}

class AuthenticationAccessRejected extends AuthenticationState {}
