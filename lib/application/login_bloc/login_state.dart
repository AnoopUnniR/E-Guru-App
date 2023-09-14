part of 'login_bloc.dart';

abstract class LoginState {
  const LoginState();


}

class LoginLoading extends LoginState {}
class LoginLoadingState extends LoginState {}

class LoginInitialised extends LoginState {
  final bool isLoggedIn;
  final bool isLoading;
  final bool isError;

  const LoginInitialised(
      {required this.isLoggedIn,
      required this.isLoading,
      required this.isError});

  factory LoginInitialised.initial() {
    return const LoginInitialised(
        isLoggedIn: false, isLoading: false, isError: false);
  }
}

class LoginCompleteAsStudent extends LoginState {
  const LoginCompleteAsStudent({required this.userModel});
  final UserModel userModel;
}

class LoginRejected extends LoginState {
  final String error;
  const LoginRejected(this.error);
}
class LoginCompleteAsTeacher extends LoginState {
  const LoginCompleteAsTeacher({required this.teacherModel});
  final UserTeacherModel teacherModel;
}

class LoginCompleteAsAdmin extends LoginState{
  const LoginCompleteAsAdmin({required this.userModel});
  final UserModel userModel;
}