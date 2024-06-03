import 'package:dotted_border/dotted_border.dart';
import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/shared_widgets/custom_button.dart';
import '../../../../../core/shared_widgets/default_text_form_field.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class ConfirmDepositViewBody extends StatefulWidget {
  const ConfirmDepositViewBody({super.key});

  @override
  State<ConfirmDepositViewBody> createState() => _ConfirmDepositViewBodyState();
}

class _ConfirmDepositViewBodyState extends State<ConfirmDepositViewBody> {
  var receiptNumber=TextEditingController();
  var dateDeposited=TextEditingController();
  var amountDeposited=TextEditingController();
  var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formKey,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: AppConstants.height10(context),
                  ),
                  CustomAppBar(prefixIcon: AssetData.back,prefixIconTap: (){
                    Navigator.pop(context);
                  }, title: "Confirm Deposit",),
                  SizedBox(
                    height: AppConstants.height20(context),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      dashPattern: const [5,1],
                      color: const Color(0xff93C5FD),
                      radius: Radius.circular(AppConstants.sp10(context)),
                      padding: EdgeInsets.all(AppConstants.width5(context)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(AppConstants.sp10(context))),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height*.15,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(AssetData.confirmReciet,width: MediaQuery.of(context).size.height*.05,),
                                ],
                              ),
                              SizedBox(height: AppConstants.height10(context),),
                              Text("Add deposit receipt",style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height*.012,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w500
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppConstants.height20(context),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                        child:Text("Receipt number :",style: TextStyle(
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
                              color: const Color(0xff041631),
                              fontWeight: FontWeight.w600,
                              fontSize: MediaQuery.of(context).size.height*.014
                          ),textInputType: TextInputType.number, controller: receiptNumber,hintText: "1234",),
                      ),
                    ],
                  ),
                  SizedBox(height: AppConstants.height20(context),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                        child:Text("Date deposited :",style: TextStyle(
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
                              color: const Color(0xff041631),
                              fontWeight: FontWeight.w600,
                              fontSize: MediaQuery.of(context).size.height*.014
                          ),textInputType: TextInputType.datetime, controller: dateDeposited,hintText: "20-5-2024",),
                      ),
                    ],
                  ),
                  SizedBox(height: AppConstants.height20(context),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                        child:Text("Amount deposited :",style: TextStyle(
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
                              color: const Color(0xff041631),
                              fontWeight: FontWeight.w600,
                              fontSize: MediaQuery.of(context).size.height*.014
                          ),textInputType: TextInputType.number, controller: amountDeposited,hintText: "Enter amount",),
                      ),
                    ],
                  ),
                  SizedBox(height: AppConstants.height20(context),),
              
                ],
              ),
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
