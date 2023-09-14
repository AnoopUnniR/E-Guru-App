part of 'otp_verification_bloc.dart';

abstract class OtpVerificationEvent {
  const OtpVerificationEvent();

}

class OtpSubmittedEvent extends OtpVerificationEvent {
  final String otp;
  final String email;
  final int id;

 const OtpSubmittedEvent({required this.otp,required  this.email,required  this.id});
}

class OtpResentEvent extends OtpVerificationEvent{}
