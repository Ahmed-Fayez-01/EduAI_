import 'package:eduai_parent/core/shared_widgets/custom_button.dart';
import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:eduai_parent/features/payment/presentation/views/add_card_view.dart';
import 'package:eduai_parent/features/payment/presentation/views/widgets/bank_card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class BankCardViewBody extends StatelessWidget {
  const BankCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppConstants.height10(context),
        ),
        CustomAppBar(prefixIcon: AssetData.back,prefixIconTap: (){
          Navigator.pop(context);
        }, title: "Bank Card",),
        SizedBox(
          height: AppConstants.height10(context),
        ),
        Column(
          children:List.generate(3, (index){
            return  Column(
              children: [
                const BankCardItem(),
                SizedBox(height: AppConstants.height10(context),),
              ],
            );
          }),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddCardView()));
          },
          child: Padding(
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AssetData.plus,width: MediaQuery.of(context).size.height*.025,),
                  SizedBox(width: AppConstants.width10(context),),
                  Text("Add more students",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryColor,
                    fontSize: MediaQuery.of(context).size.height*.012,
                  ),),
                ],
              ),
            ),
          ),
        )


      ],
    );
  }
}
