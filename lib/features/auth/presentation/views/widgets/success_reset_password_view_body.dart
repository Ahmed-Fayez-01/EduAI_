import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/colors/colors.dart';
import '../../../../../core/utils/constants.dart';

class SuccessResetPasswordViewBody extends StatelessWidget {
  const SuccessResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal:AppConstants.width20(context) ),
      child: Column(
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
      
      
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Password Changed",
                  style:TextStyle(
                      fontSize: MediaQuery.of(context).size.height*.024,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff041631)
                  )
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Text(
                  "Your password has been changed succsfully.",
                  textAlign: TextAlign.center,
                  style:TextStyle(
                      fontSize: MediaQuery.of(context).size.height*.018,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff526484)
                  )
              ),
            ],
          ),
        )
        ],
      ),
    );
  }
}
