import 'package:eduai_parent/core/utils/assets/assets.dart';
import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/constants.dart';

class GradeBookItem extends StatelessWidget {
  const GradeBookItem({super.key,});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
      child: Container(
        padding: EdgeInsets.all(AppConstants.sp20(context)),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppConstants.sp10(context)),
            border: Border.all(
                color: const Color(0xffF1F5F9)
            )
        ),
        child: Row(
          children: [
            SvgPicture.asset(AssetData.bookList,width: MediaQuery.of(context).size.height*.045,),
            SizedBox(width: AppConstants.width10(context),),
            Expanded(child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Science",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.height*.014,
                    color: const Color(0xff000000)
                ),),
                SizedBox(height: AppConstants.height5(context),),
                Text("grade 5",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.height*.012,
                    color: const Color(0xff979797)
                ),),
              ],
            ),),
            Column(
              children: [
                SvgPicture.asset(AssetData.download,width: MediaQuery.of(context).size.height*.025,),
                SizedBox(height: AppConstants.height5(context),),
                Text("Download",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.height*.012,
                    color: AppColors.primaryColor
                ),),
              ],
            )

          ],
        ),
      ),
    );
  }
}
