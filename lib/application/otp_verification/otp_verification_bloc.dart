
import 'package:eguru_app/infrastructure/otp_verification/otp_verification_repository.dart';
import 'package:eguru_app/infrastructure/user_data/get_user_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'otp_verification_event.dart';
part 'otp_verification_state.dart';

class OtpVerificationBloc
    extends Bloc<OtpVerificationEvent, OtpVerificationState> {
  OtpVerificationRepository otpVerificationRepository;
  UserDataRepository userDataRepository;
  OtpVerificationBloc(
      {required this.otpVerificationRepository,
      required this.userDataRepository})
      : super(OtpVerificationInitial()) {
    on<OtpSubmittedEvent>((event, emit) async {
      emit(OtpVerificationRequested());
      try {
        await otpVerificationRepository.optVerification(
            otp: event.otp, id: event.id.toString());
        emit(OtpVerificationSuccess());
      } catch (e) {
        emit(OtpVerificationFailed(e.toString()));
      }
    });
    on<OtpResentEvent>((event, emit) {});
  }
}
