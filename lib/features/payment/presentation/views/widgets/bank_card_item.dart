import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_button.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class BankCardItem extends StatelessWidget {
  const BankCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal:AppConstants.width20(context) ),
      child: Container(
        padding: EdgeInsets.all(AppConstants.sp15(context)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppConstants.sp10(context)),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color(0x40000000),
              spreadRadius: 0,
              blurRadius: 2,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
          border: Border.all(
              color: const Color(0x4fE2E8F0)
          ),
        ),
        child: Row(
          children: [
            Image.asset(AssetData.cardModel,width: MediaQuery.of(context).size.height*.13,),
            SizedBox(width: AppConstants.width10(context),),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Card Number: ",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: MediaQuery.of(context).size.height*.012,
                      ),),
                      Text("**** **** **** 1234",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff6B7280),
                        fontSize: MediaQuery.of(context).size.height*.012,
                      ),),
                    ],
                  ),
                  SizedBox(height: AppConstants.height5(context),),
                  Row(
                    children: [
                      Text("Exp. Date: ",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: MediaQuery.of(context).size.height*.012,
                      ),),
                      Text("12/25",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff6B7280),
                        fontSize: MediaQuery.of(context).size.height*.012,
                      ),),
                    ],
                  ),
                  SizedBox(height: AppConstants.height5(context),),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: DefaultButton(onPress: (){}, text: "Use Card",fontSize: MediaQuery.of(context).size.height*.012,height: AppConstants.height5(context),borderRadius: AppConstants.sp10(context),)),
                          SizedBox(width: AppConstants.width10(context),),
                          Expanded(child: DefaultButton(onPress: (){}, text: "Remove Card",textColor: const Color(0xffCB1000),backgroundColor: Colors.white,borderColor: const Color(0xffCB1000),hasBorder: true,fontSize: MediaQuery.of(context).size.height*.012,height: AppConstants.height5(context),borderRadius: AppConstants.sp10(context),)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
