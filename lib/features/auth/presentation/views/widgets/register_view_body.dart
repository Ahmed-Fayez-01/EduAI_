import 'package:eduai_parent/core/utils/text_styles/styles.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/shared_widgets/custom_button.dart';
import '../../../../../core/shared_widgets/default_text_form_field.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/colors/colors.dart';
import '../../../../../core/utils/constants.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  var email = TextEditingController();
  var password = TextEditingController();
  var studentPassword = TextEditingController();
  var rePassword = TextEditingController();
  var reStudentPassword = TextEditingController();
  var name = TextEditingController();
  var studentName = TextEditingController();
  var studentUserName = TextEditingController();
  var studentNationalId = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
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
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * .4,
                ),
              ],
            ),
            SizedBox(height: AppConstants.height30(context),),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.width20(context)),
              child: Text("Sign Up", style: TextStyle(
                  fontSize: MediaQuery
                      .of(context)
                      .size
                      .height * .022,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff041631)
              ),),
            ),
            SizedBox(height: AppConstants.height20(context),),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.width20(context)),
              child: DefaultTextFormField(
                validationMsg: "This Field is Required",
                borderSideEnabledColor: const Color(0xffE2E8F0),
                contentPaddingVertical: AppConstants.height20(context),
                prefixIcon: SvgPicture.asset(
                  AssetData.user, fit: BoxFit.scaleDown,
                  color: const Color(0xff6B7280),),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery
                        .of(context)
                        .size
                        .height * .017
                ),
                textInputType: TextInputType.text,
                hintStyle: Styles.hintText(context).copyWith(
                    color: Color(0xff6B7280)
                ),
                controller: name,
                hintText: "your name",),
            ),
            SizedBox(height: AppConstants.height10(context),),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.width20(context)),
              child: DefaultTextFormField(
                borderSideEnabledColor: const Color(0xffE2E8F0),
                contentPaddingVertical: AppConstants.height20(context),
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
                  AssetData.email, fit: BoxFit.scaleDown,
                  color: const Color(0xff6B7280),),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery
                        .of(context)
                        .size
                        .height * .017
                ),
                textInputType: TextInputType.emailAddress,
                hintStyle: Styles.hintText(context).copyWith(
                    color: Color(0xff6B7280)
                ),
                controller: email,
                hintText: "email",),
            ),
            SizedBox(height: AppConstants.height10(context),),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.width20(context)),
              child: DefaultTextFormField(
                validation: (String? value) {
                  if (value!.isEmpty) {
                    return "ValidationEmptyText";
                  }
                },
                borderSideEnabledColor: const Color(0xffE2E8F0),
                contentPaddingVertical: AppConstants.height20(context),
                maxLines: 1,
                passwordIcon: AssetData.viewOff,
                passwordActiveIcon: AssetData.view,
                prefixIcon: SvgPicture.asset(
                  AssetData.password, fit: BoxFit.scaleDown,
                  color: const Color(0xff6B7280),),
                isPassword: true,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery
                        .of(context)
                        .size
                        .height * .017
                ),
                textInputType: TextInputType.text,
                hintStyle: Styles.hintText(context).copyWith(
                    color: Color(0xff6B7280)
                ),
                controller: password,
                hintText: "password",),
            ),
            SizedBox(height: AppConstants.height10(context),),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.width20(context)),
              child: DefaultTextFormField(
                validation: (String? value) {
                  if (value!.isEmpty) {
                    return "ValidationEmptyText";
                  } else if (rePassword.text !=
                      password.text) {
                    return "notIdenticalText";
                  }
                },
                borderSideEnabledColor: const Color(0xffE2E8F0),
                contentPaddingVertical: AppConstants.height20(context),
                maxLines: 1,
                prefixIcon: SvgPicture.asset(
                  AssetData.password, fit: BoxFit.scaleDown,
                  color: const Color(0xff6B7280),),
                passwordIcon: AssetData.viewOff,
                passwordActiveIcon: AssetData.view,
                isPassword: true,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery
                        .of(context)
                        .size
                        .height * .017
                ),
                textInputType: TextInputType.text,
                hintStyle: Styles.hintText(context).copyWith(
                    color: Color(0xff6B7280)
                ),
                controller: rePassword,
                hintText: "confirm password",),
            ),
            SizedBox(height: AppConstants.height20(context),),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppConstants.width20(context),),
              child: Text(
                  "To create an account for your child, please enter their full name and national ID number, then create a username and password for the student.",style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: MediaQuery.of(context).size.height*.014,
                color: const Color(0xff041631)
              ),),),
            SizedBox(height: AppConstants.height20(context),),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.width20(context)),
              child: DefaultTextFormField(
                validationMsg: "This Field is Required",
                borderSideEnabledColor: const Color(0xffE2E8F0),
                contentPaddingVertical: AppConstants.height20(context),
                prefixIcon: SvgPicture.asset(
                  AssetData.user, fit: BoxFit.scaleDown,
                  color: const Color(0xff6B7280),),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery
                        .of(context)
                        .size
                        .height * .017
                ),
                textInputType: TextInputType.text,
                hintStyle: Styles.hintText(context).copyWith(
                    color: Color(0xff6B7280)
                ),
                controller: studentName,
                hintText: "Student name",),
            ),
            SizedBox(height: AppConstants.height10(context),),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.width20(context)),
              child: DefaultTextFormField(
                validationMsg: "This Field is Required",
                borderSideEnabledColor: const Color(0xffE2E8F0),
                contentPaddingVertical: AppConstants.height20(context),
                prefixIcon: SvgPicture.asset(
                  AssetData.nationalId, fit: BoxFit.scaleDown,
                  color: const Color(0xff6B7280),),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery
                        .of(context)
                        .size
                        .height * .017
                ),
                textInputType: TextInputType.text,
                hintStyle: Styles.hintText(context).copyWith(
                    color: const Color(0xff6B7280)
                ),
                controller: studentNationalId,
                hintText: "Student’s national ID number",),
            ),
            SizedBox(height: AppConstants.height10(context),),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.width20(context)),
              child: DefaultTextFormField(
                validationMsg: "This Field is Required",
                borderSideEnabledColor: const Color(0xffE2E8F0),
                contentPaddingVertical: AppConstants.height20(context),
                prefixIcon: SvgPicture.asset(
                  AssetData.userName, fit: BoxFit.scaleDown,
                  color: const Color(0xff6B7280),),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery
                        .of(context)
                        .size
                        .height * .017
                ),
                textInputType: TextInputType.text,
                hintStyle: Styles.hintText(context).copyWith(
                    color: Color(0xff6B7280)
                ),
                controller: studentUserName,
                hintText: "Student’s user name",),
            ),
            SizedBox(height: AppConstants.height10(context),),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.width20(context)),
              child: DefaultTextFormField(
                validation: (String? value) {
                  if (value!.isEmpty) {
                    return "ValidationEmptyText";
                  }
                },
                borderSideEnabledColor: const Color(0xffE2E8F0),
                contentPaddingVertical: AppConstants.height20(context),
                maxLines: 1,
                passwordIcon: AssetData.viewOff,
                passwordActiveIcon: AssetData.view,
                prefixIcon: SvgPicture.asset(
                  AssetData.password, fit: BoxFit.scaleDown,
                  color: const Color(0xff6B7280),),
                isPassword: true,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery
                        .of(context)
                        .size
                        .height * .017
                ),
                textInputType: TextInputType.text,
                hintStyle: Styles.hintText(context).copyWith(
                    color: Color(0xff6B7280)
                ),
                controller: studentPassword,
                hintText: "Student Password",),
            ),
            SizedBox(height: AppConstants.height10(context),),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.width20(context)),
              child: DefaultTextFormField(
                validation: (String? value) {
                  if (value!.isEmpty) {
                    return "ValidationEmptyText";
                  } else if (rePassword.text !=
                      password.text) {
                    return "notIdenticalText";
                  }
                },
                borderSideEnabledColor: const Color(0xffE2E8F0),
                contentPaddingVertical: AppConstants.height20(context),
                maxLines: 1,
                prefixIcon: SvgPicture.asset(
                  AssetData.password, fit: BoxFit.scaleDown,
                  color: const Color(0xff6B7280),),
                passwordIcon: AssetData.viewOff,
                passwordActiveIcon: AssetData.view,
                isPassword: true,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery
                        .of(context)
                        .size
                        .height * .017
                ),
                textInputType: TextInputType.text,
                hintStyle: Styles.hintText(context).copyWith(
                    color: const Color(0xff6B7280)
                ),
                controller: reStudentPassword,
                hintText: "confirm Student password",),
            ),
            SizedBox(height: AppConstants.height20(context),),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.width20(context)),
              child: DefaultButton(onPress: () {
                if (formKey.currentState!.validate()) {

                }
              }, text: "Sign Up", borderRadius: AppConstants.sp10(context),),
            ),
            SizedBox(height: AppConstants.height20(context),),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account?", style: TextStyle(
                    fontSize: MediaQuery
                        .of(context)
                        .size
                        .height * .018,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff041631)
                ),),
                SizedBox(width: AppConstants.width5(context),),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text("Sign in", style: TextStyle(
                      fontSize: MediaQuery
                          .of(context)
                          .size
                          .height * .018,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColor
                  ),),
                )
              ],
            ),
            SizedBox(height: AppConstants.height20(context),),
          ],
        ),
      ),
    );
  }
}
