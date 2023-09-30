part of 'signup_bloc.dart';

abstract class SignupState {
  const SignupState();
}

class SignupInitial extends SignupState {}

class SignupAccepted extends SignupState {
  final SignupResponse? signupModel;
  const SignupAccepted({this.signupModel});
}

class SignupLoading extends SignupState {}

class SignupRejected extends SignupState {
  final String error;

  const SignupRejected(this.error);
}

class SignupImageLoading extends SignupState {
  final CroppedFile? image;

  SignupImageLoading(
    this.image,
  );
}
