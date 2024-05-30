import 'package:eduai_parent/core/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/shared_widgets/default_text_form_field.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class AddCardViewBody extends StatefulWidget {
  const AddCardViewBody({super.key});

  @override
  State<AddCardViewBody> createState() => _AddCardViewBodyState();
}

class _AddCardViewBodyState extends State<AddCardViewBody> {
  var name= TextEditingController();
  var cardNumber= TextEditingController();
  var cvv= TextEditingController();
  var expDate= TextEditingController();
  var formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: AppConstants.height10(context),
                ),
                CustomAppBar(prefixIcon: AssetData.back,prefixIconTap: (){
                  Navigator.pop(context);
                }, title: "Add Card",),
                SizedBox(
                  height: AppConstants.height10(context),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                      child:Text("Card Holder Name",style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height*.016,
                        fontWeight: FontWeight.w600
                      ),),
                    ),
                    SizedBox(height: AppConstants.height10(context),),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                      child: DefaultTextFormField(
                        validationMsg: "This Field is Required",
                        borderSideEnabledColor: const Color(0xffE2E8F0),
                        contentPaddingHorizontal: AppConstants.height20(context),
                        contentPaddingVertical: AppConstants.height20(context),
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: MediaQuery.of(context).size.height*.017
                        ),textInputType: TextInputType.text, controller: name,hintText: "Your Name",),
                    ),
                  ],
                ),
                SizedBox(height: AppConstants.height20(context),),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                      child:Text("Card Number",style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height*.016,
                        fontWeight: FontWeight.w600
                      ),),
                    ),
                    SizedBox(height: AppConstants.height10(context),),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                      child: DefaultTextFormField(
                        validationMsg: "This Field is Required",
                        borderSideEnabledColor: const Color(0xffE2E8F0),
                        contentPaddingHorizontal: AppConstants.height20(context),
                        contentPaddingVertical: AppConstants.height20(context),
                        suffixIcon: SvgPicture.asset(AssetData.creditCard,fit: BoxFit.scaleDown,color: const Color(0xffB4C0CC),),
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: MediaQuery.of(context).size.height*.017
                        ),textInputType: TextInputType.number, controller: cardNumber,hintText: "0000-0000-0000-0000",),
                    ),
                  ],
                ),
                SizedBox(height: AppConstants.height20(context),),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Exp. Date",style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height*.016,
                                fontWeight: FontWeight.w600
                            ),),
                            SizedBox(height: AppConstants.height10(context),),
                            DefaultTextFormField(
                              validationMsg: "This Field is Required",
                              borderSideEnabledColor: const Color(0xffE2E8F0),
                              contentPaddingHorizontal: AppConstants.height20(context),
                              suffixIcon: SvgPicture.asset(AssetData.helpCircle,fit: BoxFit.scaleDown,color: const Color(0xffB4C0CC),),
                              contentPaddingVertical: AppConstants.height20(context),
                              maxLines: 1,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: MediaQuery.of(context).size.height*.017
                              ),textInputType: TextInputType.number, controller: expDate,hintText: "MM/YY",),
                          ],
                        ),
                      ),
                      SizedBox(width: AppConstants.width20(context),),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("CVV",style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height*.016,
                                fontWeight: FontWeight.w600
                            ),),
                            SizedBox(height: AppConstants.height10(context),),
                            DefaultTextFormField(
                              validationMsg: "This Field is Required",
                              borderSideEnabledColor: const Color(0xffE2E8F0),
                              contentPaddingHorizontal: AppConstants.height20(context),
                              suffixIcon: SvgPicture.asset(AssetData.helpCircle,fit: BoxFit.scaleDown,color: const Color(0xffB4C0CC),),
                              contentPaddingVertical: AppConstants.height20(context),
                              maxLines: 1,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: MediaQuery.of(context).size.height*.017
                              ),textInputType: TextInputType.number, controller: cvv,hintText: "000",),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: DefaultButton(onPress: (){
              if(formKey.currentState!.validate())
              {

              }
            }, text: "Add Card",borderRadius: AppConstants.sp10(context),),
          ),
          SizedBox(height: AppConstants.height20(context),),
        ],
      ),
    );
  }
}
