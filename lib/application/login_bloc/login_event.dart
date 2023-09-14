part of 'login_bloc.dart';

abstract class LoginEvent  {
  const LoginEvent();

}

class Started extends LoginEvent{
  
}

class LoginRequestedEvent extends LoginEvent {
  final String password;
  final String email;

 const LoginRequestedEvent({required this.password,required this.email});
}
