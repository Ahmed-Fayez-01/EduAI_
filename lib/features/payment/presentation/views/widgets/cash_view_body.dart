import 'package:eduai_parent/features/payment/presentation/views/confirm_deposit_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/shared_widgets/custom_button.dart';
import '../../../../../core/shared_widgets/default_text_form_field.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class CashViewBody extends StatefulWidget {
  const CashViewBody({super.key});

  @override
  State<CashViewBody> createState() => _CashViewBodyState();
}

class _CashViewBodyState extends State<CashViewBody> {
  var bankName= TextEditingController();
  var beneficiaryName= TextEditingController();
  var beneficiaryAddress= TextEditingController();
  var beneficiaryAccountNumber= TextEditingController();
  @override
  Widget build(BuildContext context) {
    bankName.text="Commercial International Bank of Egypt";
    beneficiaryName.text="EduAi";
    beneficiaryAddress.text="BLock 80 off 85 Axis, New Cairo 11234, Cairo, Egypt";
    beneficiaryAccountNumber.text="123456789098";
    return Column(
      children: [
        Expanded(
          child: Column(
            children: [
              SizedBox(
                height: AppConstants.height10(context),
              ),
              CustomAppBar(prefixIcon: AssetData.back,prefixIconTap: (){
                Navigator.pop(context);
              }, title: "Bank Deposit",),
              SizedBox(
                height: AppConstants.height20(context),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                child: Text("Visit the nearest CIB branch and make a deposit using the following details, then confirm the transfer on the Edu AI app.",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: MediaQuery.of(context).size.height*.016,
                ),),
              ),
              SizedBox(
                height: AppConstants.height20(context),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                    child:Text("Bank name :",style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height*.016,
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                  SizedBox(height: AppConstants.height10(context),),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                    child: DefaultTextFormField(
                      borderSideEnabledColor: const Color(0xffE2E8F0),
                      contentPaddingHorizontal: AppConstants.height20(context),
                      contentPaddingVertical: AppConstants.height20(context),
                      fillColor: Colors.transparent,
                      maxLines: 1,
                      readOnly: true,
                      style: TextStyle(
                          color: const Color(0xff041631),
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.height*.014
                      ),textInputType: TextInputType.text, controller: bankName,hintText: "Your Name",),
                  ),
                ],
              ),
              SizedBox(height: AppConstants.height20(context),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                    child:Text("Beneficiary name :",style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height*.016,
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                  SizedBox(height: AppConstants.height10(context),),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                    child: DefaultTextFormField(
                      borderSideEnabledColor: const Color(0xffE2E8F0),
                      contentPaddingHorizontal: AppConstants.height20(context),
                      contentPaddingVertical: AppConstants.height20(context),
                      fillColor: Colors.transparent,
                      maxLines: 1,
                      readOnly: true,
                      style: TextStyle(
                          color: const Color(0xff041631),
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.height*.014
                      ),textInputType: TextInputType.text, controller: beneficiaryName,hintText: "Your Name",),
                  ),
                ],
              ),
              SizedBox(height: AppConstants.height20(context),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                    child:Text("Beneficiary address :",style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height*.016,
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                  SizedBox(height: AppConstants.height10(context),),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                    child: DefaultTextFormField(
                      borderSideEnabledColor: const Color(0xffE2E8F0),
                      contentPaddingHorizontal: AppConstants.height20(context),
                      contentPaddingVertical: AppConstants.height20(context),
                      fillColor: Colors.transparent,
                      maxLines: 1,
                      readOnly: true,
                      style: TextStyle(
                          color: const Color(0xff041631),
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.height*.014
                      ),textInputType: TextInputType.text, controller: beneficiaryAddress,hintText: "Your Name",),
                  ),
                ],
              ),
              SizedBox(height: AppConstants.height20(context),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                    child:Text("Beneficiary account number :",style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height*.016,
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                  SizedBox(height: AppConstants.height10(context),),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                    child: DefaultTextFormField(
                      borderSideEnabledColor: const Color(0xffE2E8F0),
                      contentPaddingHorizontal: AppConstants.height20(context),
                      contentPaddingVertical: AppConstants.height20(context),
                      fillColor: Colors.transparent,
                      maxLines: 1,
                      readOnly: true,
                      style: TextStyle(
                          color: const Color(0xff041631),
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.height*.014
                      ),textInputType: TextInputType.text, controller: beneficiaryAccountNumber,hintText: "Your Name",),
                  ),
                ],
              ),
              SizedBox(height: AppConstants.height20(context),),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                child: Text("Please keep  a photo of your receipt to confirm your deposit.",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffFF2C20),
                  fontSize: MediaQuery.of(context).size.height*.016,
                ),),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
          child: DefaultButton(onPress: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ConfirmDepositView()));
          }, text: "Confirm",borderRadius: AppConstants.sp10(context),),
        ),
        SizedBox(height: AppConstants.height20(context),),
      ],
    );
  }
}
