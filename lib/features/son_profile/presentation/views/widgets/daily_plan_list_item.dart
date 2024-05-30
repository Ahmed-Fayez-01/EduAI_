import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class DailyPlanListItem extends StatefulWidget {
  const DailyPlanListItem({super.key,});
  @override
  State<DailyPlanListItem> createState() => _DailyPlanListItemState();
}

class _DailyPlanListItemState extends State<DailyPlanListItem> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: AppConstants.width20(context),
            vertical: AppConstants.height10(context)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppConstants.width5(context)),
            color: Colors.white,
            border: Border(
              left: BorderSide(color: AppColors.primaryColor, width: 6),)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Science",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .014,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff041631)),
                  ),
                ],
              ),
            ),
            SizedBox(width: AppConstants.width20(context),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "A+",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * .014,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryColor),
                ),
                SizedBox(
                  height: AppConstants.height5(context),
                ),
                Text(
                  "9 of 10",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * .012,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff526484)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
