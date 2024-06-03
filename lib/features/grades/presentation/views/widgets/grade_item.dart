import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class GradeItem extends StatefulWidget {
  const GradeItem({super.key,});
  @override
  State<GradeItem> createState() => _GradeItemState();
}

class _GradeItemState extends State<GradeItem> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: AppConstants.width20(context),
            vertical: AppConstants.height20(context)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppConstants.width5(context)/2),
            color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mathematics",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .014,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff041631)),
                  ),
                  SizedBox(height: AppConstants.height10(context),),
                  Text(
                    "Exercise Trigonometry 1st topic",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .014,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff041631)),
                  ),
                  SizedBox(height: AppConstants.height10(context),),
                  Text(
                    "Classwork",
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
