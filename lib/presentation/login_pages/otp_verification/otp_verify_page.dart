
import 'package:eguru_app/application/otp_verification/otp_verification_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/signup_response_model.dart';
import 'package:eguru_app/infrastructure/otp_verification/otp_verification_repository.dart';
import 'package:eguru_app/infrastructure/user_data/get_user_data.dart';
import 'package:eguru_app/presentation/login_pages/otp_verification/widgets/otp_box.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class OtpVerificationPage extends StatelessWidget {
  final TextEditingController otpControllerOne = TextEditingController();
  final TextEditingController otpControllerTwo = TextEditingController();
  final TextEditingController otpControllerThree = TextEditingController();
  final TextEditingController otpControllerFour = TextEditingController();
  final TextEditingController otpControllerFive = TextEditingController();
  final TextEditingController otpControllerSix = TextEditingController();

  OtpVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    OtpVerificationRepository otpVerificationRepository =
        OtpVerificationRepository();
    UserDataRepository userDataRepository = UserDataRepository();
    double width = MediaQuery.of(context).size.width / 100;
    final SignupResponse signupModel =
        ModalRoute.of(context)?.settings.arguments as SignupResponse;
    return Container(
      decoration: scaffoldBackgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                sbh10,
                const Text(
                  'Please enter the OTP sent to your Email',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                Container(
                  constraints:const BoxConstraints(maxWidth: textFieldWidth),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OtpInput(otpControllerOne, true),
                      OtpInput(otpControllerTwo, false),
                      OtpInput(otpControllerThree, false),
                      OtpInput(otpControllerFour, false),
                      OtpInput(otpControllerFive, false),
                      OtpInput(otpControllerSix, false),
                    ],
                  ),
                ),
                BlocProvider(
                  create: (context) => OtpVerificationBloc(
                      otpVerificationRepository: otpVerificationRepository,
                      userDataRepository: userDataRepository),
                  child:
                      BlocConsumer<OtpVerificationBloc, OtpVerificationState>(
                          listener: (context, state) {
                    if (state is OtpVerificationSuccess) {
                      showCustomSnackbar(
                          message: 'Otp verification success, Please login',
                          context: context);
                      Navigator.pushNamedAndRemoveUntil(
                          context, loginPageRoute, (route) => false);
                    }
                    if (state is OtpVerificationFailed) {
                      showCustomSnackbar(
                          message: state.error, context: context);
                    }
                  }, builder: (context, state) {
                    return Column(
                      children: [
                        SizedBox(
                          width: width * 70,
                          child: ElevatedButton(
                            onPressed: () {
                              String otp = otpControllerOne.text +
                                  otpControllerTwo.text +
                                  otpControllerThree.text +
                                  otpControllerFour.text +
                                  otpControllerFive.text +
                                  otpControllerSix.text;
                              BlocProvider.of<OtpVerificationBloc>(context).add(
                                  OtpSubmittedEvent(
                                      email: signupModel.email,
                                      id: signupModel.id,
                                      otp: otp));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 233, 9, 210),
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            child: (state is OtpVerificationRequested)
                                ? const CircularProgressIndicator()
                                : textWhite('Verify OTP'),
                          ),
                        ),
                        sbh20,
                        (state is OtpVerificationRequested)
                            ? TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Resent OTP",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              )
                            : sbh10
                      ],
                    );
                  }),
                ),
                sbh10
              ],
            ),
          ),
        ),
      ),
    );
  }
}
