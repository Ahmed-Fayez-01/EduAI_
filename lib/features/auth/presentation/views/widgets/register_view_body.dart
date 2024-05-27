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
  var email =TextEditingController();
  var password=TextEditingController();
  var rePassword=TextEditingController();
  var subject=TextEditingController();
  var name=TextEditingController();
  var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key:formKey ,
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
              child: Text("Sign Up",style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height*.022,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff041631)
              ),),
            ),
            SizedBox(height: AppConstants.height20(context),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
              child: DefaultTextFormField(
                validationMsg: "This Field is Required",
                borderSideEnabledColor: const Color(0xffE2E8F0),
                contentPaddingVertical: AppConstants.height20(context),
                prefixIcon: SvgPicture.asset(AssetData.user,fit: BoxFit.scaleDown,),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.height*.017
                ),textInputType: TextInputType.text, controller: name,hintText: "your name",),
            ),
            SizedBox(height: AppConstants.height10(context),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
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
                prefixIcon: SvgPicture.asset(AssetData.email,fit: BoxFit.scaleDown,),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.height*.017
                ),textInputType: TextInputType.emailAddress, controller: email,hintText: "email",),
            ),
            SizedBox(height: AppConstants.height10(context),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
              child: DefaultTextFormField(
                validationMsg: "This Field is Required",
                borderSideEnabledColor: const Color(0xffE2E8F0),
                contentPaddingVertical: AppConstants.height20(context),
                prefixIcon: SvgPicture.asset(AssetData.book,fit: BoxFit.scaleDown,),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.height*.017
                ),textInputType: TextInputType.text, controller: subject,hintText: "Subject taught",),
            ),
            SizedBox(height: AppConstants.height10(context),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
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
                prefixIcon: SvgPicture.asset(AssetData.password,fit: BoxFit.scaleDown,),
                isPassword: true,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.height*.017
                ),textInputType: TextInputType.text, controller: password,hintText: "password",),
            ),
            SizedBox(height: AppConstants.height10(context),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
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
                prefixIcon: SvgPicture.asset(AssetData.password,fit: BoxFit.scaleDown,),
                passwordIcon: AssetData.viewOff,
                passwordActiveIcon: AssetData.view,
                isPassword: true,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.height*.017
                ),textInputType: TextInputType.text, controller: rePassword,hintText: "confirm password",),
            ),
            SizedBox(height: AppConstants.height20(context),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:AppConstants.width20(context) ),
              child: DefaultButton(onPress: (){
                if(formKey.currentState!.validate())
                {

                }
              }, text: "Sign Up",borderRadius: AppConstants.sp10(context),),
            ),
            SizedBox(height: AppConstants.height30(context),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("or continue with",style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height*.018,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffBEC8D3)
                  ),),
                ],
              ),
            ),
            SizedBox(height: AppConstants.height20(context),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(AppConstants.sp15(context)),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffF1F5F9),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                        )
                      ]
                  ),
                  child: SvgPicture.asset(AssetData.google,width: MediaQuery.of(context).size.height*.035,),
                ),
                SizedBox(width: AppConstants.width10(context),),
                Container(
                  padding: EdgeInsets.all(AppConstants.sp15(context)),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffF1F5F9),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                        )
                      ]
                  ),
                  child: SvgPicture.asset(AssetData.face,width: MediaQuery.of(context).size.height*.035,),
                ),
                SizedBox(width: AppConstants.width10(context),),
                Container(
                  padding: EdgeInsets.all(AppConstants.sp15(context)),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffF1F5F9),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                        )
                      ]
                  ),
                  child: SvgPicture.asset(AssetData.apple,width: MediaQuery.of(context).size.height*.035,),
                ),
              ],
            ),
            SizedBox(height: AppConstants.height20(context),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account?",style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height*.018,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff041631)
                ),),
                SizedBox(width: AppConstants.width5(context),),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text("Sign in",style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height*.018,
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
