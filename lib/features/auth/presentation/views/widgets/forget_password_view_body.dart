import 'package:eduai_parent/core/shared_widgets/custom_button.dart';
import 'package:eduai_parent/features/auth/presentation/views/otp_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/shared_widgets/default_text_form_field.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/colors/colors.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/text_styles/styles.dart';
import 'package:email_validator/email_validator.dart';

import '../login_view.dart';

class ForgetPasswordViewBody extends StatefulWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  State<ForgetPasswordViewBody> createState() => _ForgetPasswordViewBodyState();
}

class _ForgetPasswordViewBodyState extends State<ForgetPasswordViewBody> {
  var formKey=GlobalKey<FormState>();
  var email =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppConstants.height30(context),),
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
          SizedBox(height: AppConstants.height30(context),),
          SizedBox(height: MediaQuery.of(context).size.height * 0.07),
          Text(
              "Forget Password",
              style:TextStyle(
                  fontSize: MediaQuery.of(context).size.height*.024,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff041631)
              )
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Text(
              "Reset your account password and access your personal account again.",
              style:TextStyle(
                  fontSize: MediaQuery.of(context).size.height*.016,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff526484)
              )
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Form(
            key: formKey,
            child: DefaultTextFormField(
              textInputType: TextInputType.emailAddress,
              controller: email,
              hintText: "email",
              validation: (String? value) {
                if (value!.isEmpty) {
                  return "This Field is Required";
                } else if (EmailValidator.validate(value)) {
                  return null;
                } else {
                  return "Please provide a valid email address.";
                }
              },
              prefixIcon: SvgPicture.asset(
                AssetData.email,
                fit: BoxFit.scaleDown,
              ),
              contentPaddingHorizontal: AppConstants.width20(context),
              contentPaddingVertical: AppConstants.height20(context),
            ),
          ),
          SizedBox(height: AppConstants.height30(context)),
const Spacer(),
          DefaultButton(onPress: (){
            if(formKey.currentState!.validate())
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpView()));
              }
          }, text: "Next",borderRadius: AppConstants.sp10(context),),
          SizedBox(height: AppConstants.height10(context),),
          DefaultButton(onPress: (){
            Navigator.pop(context);
          }, text: "Back",elevation: 0,backgroundColor: Colors.white,textColor: AppColors.primaryColor,borderRadius: AppConstants.sp10(context),),
          SizedBox(height: AppConstants.height30(context)*2,),
        ],
      ),
    );
  }
}
