part of 'signup_bloc.dart';

abstract class SignupEvent {
  const SignupEvent();
}

class SignupRequestedEvent extends SignupEvent {
  final SignUpCredentials signupCreds;

  const SignupRequestedEvent(this.signupCreds);
}

class SignupVerifyEvent extends SignupEvent {}

class SignupImage extends SignupEvent {
  final ImageSource sourse;

  SignupImage(this.sourse);
}
