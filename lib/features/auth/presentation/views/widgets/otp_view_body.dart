import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../../../../core/shared_widgets/custom_button.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/colors/colors.dart';
import '../../../../../core/utils/constants.dart';
import '../reset_password_view.dart';

class OtpViewBody extends StatefulWidget {
  const OtpViewBody({
    super.key,
  });

  @override
  State<OtpViewBody> createState() => _OtpViewBodyState();
}

class _OtpViewBodyState extends State<OtpViewBody> {
  bool finished = false;
  TextEditingController otpCode = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  int otpLength=0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: AppConstants.height30(context),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AssetData.logo,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width*.4,
              ),
            ],
          ),
          SizedBox(
            height: AppConstants.height30(context) * 3,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Verification Code",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * .024,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff041631)),
                ),
                SizedBox(
                  height: AppConstants.height10(context),
                ),
                RichText(
                  text: TextSpan(
                    text: "We have sent the OTP code to",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .016,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff526484)),
                    children: [
                      TextSpan(
                        text:
                            " ahmed@gmail.com ",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * .018,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text:
                        "for the verification process. ",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * .016,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff526484)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppConstants.height20(context) * 2,
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
              child: PinCodeTextField(
                length: 5,
                appContext: context,
                obscureText: false,
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height * .025,
                    fontWeight: FontWeight.w600),
                cursorColor: Colors.grey,
                cursorWidth: MediaQuery.of(context).size.width * .04,
                cursorHeight: MediaQuery.of(context).size.height * .003,
                animationType: AnimationType.fade,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  fieldHeight: MediaQuery.of(context).size.height * .07,
                  fieldWidth: MediaQuery.of(context).size.height * .07,
                  activeFillColor: Colors.transparent,
                  borderWidth: 1,
                  borderRadius: BorderRadius.circular(AppConstants.sp10(context)),
                  inactiveColor: const Color(0xffE9EDF3),
                  inactiveFillColor: Colors.white,
                  activeColor: const Color(0xffE9EDF3),
                  selectedFillColor: Colors.transparent,
                  selectedColor: const Color(0xffE9EDF3),
                ),
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "emptyOTP";
                  }
                  return null;
                },
                controller: otpCode,
                onCompleted: (v) {},
                onChanged: (value) {
                  setState(() {
                    otpLength=value.length;
                  });

                },
                beforeTextPaste: (text) {
                  return true;
                },
              ),
            ),
          ),
          SizedBox(
            height: AppConstants.height20(context) * 2,
          ),
          SizedBox(
            height: AppConstants.height30(context),
          ),
          finished
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Send code again  ",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * .016,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff041631)),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          finished = false;
                        });
                      },
                      child: Text(
                        "Resend",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * .016,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff041631)),
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Send code again ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: MediaQuery.of(context).size.height * .016),
                    ),
                    Countdown(
                      seconds: 120,
                      build: (BuildContext context, double time) => Text(
                        "${(time ~/ 60).toString()}:${(time.toInt() % 60).toInt()}",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * .016,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff526484)),
                      ),
                      interval: const Duration(seconds: 1),
                      onFinished: () {
                        setState(() {
                          finished = true;
                        });
                      },
                    ),
                  ],
                ),
          SizedBox(
            height: AppConstants.height30(context) * 4,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: DefaultButton(
              onPress: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResetPasswordView()));
                }
              },
              text: "Next",
              elevation: 0,
              backgroundColor: otpLength<5? const Color(0xffB4C0CC):null,
              borderRadius: AppConstants.sp10(context),
            ),
          ),
          SizedBox(
            height: AppConstants.height10(context),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: DefaultButton(
              onPress: () {
                Navigator.pop(context);
              },
              text: "Back",
              elevation: 0,
              backgroundColor: Colors.white,
              textColor: AppColors.primaryColor,
              borderRadius: AppConstants.sp10(context),
            ),
          ),
          SizedBox(
            height: AppConstants.height30(context) * 2,
          ),
        ],
      ),
    );
  }
}
