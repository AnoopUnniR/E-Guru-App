part of 'otp_verification_bloc.dart';

abstract class OtpVerificationState  {
  const OtpVerificationState();


}

class OtpVerificationInitial extends OtpVerificationState {}

class OtpVerificationRequested extends OtpVerificationState {}

class OtpVerificationSuccess extends OtpVerificationState {}

class OtpVerificationFailed extends OtpVerificationState {
  final String error;
  const OtpVerificationFailed(this.error);
}
