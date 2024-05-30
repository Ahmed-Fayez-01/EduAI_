import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({super.key, required this.title, required this.icon, this.onTap});
  final String title;
  final String icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
        child: Container(
          padding: EdgeInsets.all(AppConstants.sp20(context)),

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppConstants.sp10(context)),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x40000000),
                  spreadRadius: 0,
                  blurRadius: 2,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
              color: Colors.white,
              border: Border.all(
                  color: const Color(0x4FE2E8F0)
              )
          ),
          child: Row(
            children: [
              SvgPicture.asset(icon,width: MediaQuery.of(context).size.height*.035,),
              SizedBox(width: AppConstants.width20(context),),
              Expanded(child: Text(title,style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height*.016,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff282828)
              ),)),
              InkWell(onTap: (){

              },child: SvgPicture.asset(AssetData.right,width: MediaQuery.of(context).size.height*.012,)),
            ],
          ),
        ),
      ),
    );
  }
}
