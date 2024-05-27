import 'package:eduai_parent/core/utils/assets/assets.dart';
import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/constants.dart';

class ExamItem extends StatefulWidget {
  const ExamItem({super.key,});

  @override
  State<ExamItem> createState() => _ExamItemState();
}

class _ExamItemState extends State<ExamItem> {

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Science",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .014,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff041631)),
                  ),
                ),
                SizedBox(width: AppConstants.width20(context),),
                Row(
                  children: [
                    SvgPicture.asset(AssetData.clock,width: MediaQuery.of(context).size.height*.02,),
                    SizedBox(width: AppConstants.width5(context),),
                    Text("20 min",style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .014,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff526484)),),
                  ],
                )
              ],
            ),
            SizedBox(
              height: AppConstants.height5(context),
            ),
            Text(
              "Chapter 5: Solar system",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * .012,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff6B7280)),
            ),
            SizedBox(
              height: AppConstants.height5(context),
            ),
            Text(
              "Quiz",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * .012,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff979797)),
            ),
          ],
        ),
      ),
    );
  }
}
