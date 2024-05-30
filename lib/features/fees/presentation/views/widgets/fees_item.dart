import 'package:eduai_parent/features/fees/presentation/views/fees_details_view.dart';
import 'package:eduai_parent/features/payment/presentation/views/payment_methods_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/colors/colors.dart';
import '../../../../../core/utils/constants.dart';

class FeesItem extends StatelessWidget {
  const FeesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:   EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: const Color(0xffE7ECFB)
            ),
            borderRadius: BorderRadius.circular(AppConstants.sp10(context)),
            color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context),vertical: AppConstants.height10(context)),
              decoration: BoxDecoration(
                color: const Color(0xffE7ECFB),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppConstants.sp10(context)),topRight: Radius.circular(AppConstants.sp10(context)) ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text("Fee Type",textAlign: TextAlign.center,style: TextStyle(
                          color:  AppColors.primaryColor,
                          fontSize: MediaQuery.of(context).size.height * .014,
                          fontWeight: FontWeight.w500,
                        ),),
                      ),
                    ],
                  )),
                  Expanded(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text("Payment Date",textAlign: TextAlign.center,style: TextStyle(
                          color:  AppColors.primaryColor,
                          fontSize: MediaQuery.of(context).size.height * .014,
                          fontWeight: FontWeight.w500,
                        ),),
                      ),
                    ],
                  )),
                  Expanded(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text("Discount",textAlign: TextAlign.center,style: TextStyle(
                          color:  AppColors.primaryColor,
                          fontSize: MediaQuery.of(context).size.height * .014,
                          fontWeight: FontWeight.w500,
                        ),),
                      ),
                    ],
                  )),
                  Expanded(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text("Amount",textAlign: TextAlign.center,style: TextStyle(
                          color:  AppColors.primaryColor,
                          fontSize: MediaQuery.of(context).size.height * .014,
                          fontWeight: FontWeight.w500,
                        ),),
                      ),
                    ],
                  )),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: AppConstants.height10(context),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text("Term 2",textAlign: TextAlign.center,style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * .014,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ],
                      )),
                      Expanded(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text("12 Jun, 2024",textAlign: TextAlign.center,style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * .014,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ],
                      )),
                      Expanded(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text("00.00",textAlign: TextAlign.center,style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * .014,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ],
                      )),
                      Expanded(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text("8100.00",textAlign: TextAlign.center,style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * .014,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ],
                      )),

                    ],
                  ),
                  SizedBox(height: AppConstants.height30(context),),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const FeesDetailsView()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal:AppConstants.width10(context),vertical: AppConstants.height5(context)),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.primaryColor
                            ),
                            borderRadius: BorderRadius.circular(AppConstants.width5(context)),
                          ),
                          child: Text("Details", style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: MediaQuery.of(context).size.height * .016,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),
                      ),
                      SizedBox(width: AppConstants.width10(context),),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentMethodsView()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal:AppConstants.width10(context),vertical: AppConstants.height5(context)),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(AppConstants.width5(context)),
                          ),
                          child: Text("Pay Fees", style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height * .016,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: AppConstants.height20(context),)
          ],
        ),
      ),
    );
  }
}
