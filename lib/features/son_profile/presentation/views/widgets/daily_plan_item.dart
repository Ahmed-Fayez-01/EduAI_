import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';
import '../daily_plans_view.dart';

class DailyPlanItem extends StatelessWidget {
  const DailyPlanItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const DailyPlansView()));
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppConstants.sp10(context)),
              border: Border.all(
                color: const Color(0xffE2E8F0),
              ),
              boxShadow: const [
                BoxShadow(
                    color: Color(0xffF1F5F9),
                    blurRadius: 8,
                    spreadRadius: 0,
                    offset: Offset(0, 8))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: AppConstants.height20(context),
                    ),
                    Text(
                      "Daily plan",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * .02,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff000000)),
                    ),
                    SizedBox(
                      height: AppConstants.height5(context),
                    ),
                    Row(
                      children: [
                        Text(
                          "95%",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * .018,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff00B505)),
                        ),
                        SizedBox(width: AppConstants.width5(context),),
                        SvgPicture.asset(
                          AssetData.cup,
                          width: MediaQuery.of(context).size.height * .015,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppConstants.height10(context),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Show Details",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * .014,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryColor),
                        ),
                        SizedBox(width: AppConstants.width5(context),),
                        SvgPicture.asset(
                          AssetData.right,
                          color: AppColors.primaryColor,
                          width: MediaQuery.of(context).size.height * .008,
                        ),
                      ],
                    ),

                    SizedBox(
                      height: AppConstants.height20(context),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
