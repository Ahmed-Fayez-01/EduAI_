import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class ComingEventItem extends StatelessWidget {
  const ComingEventItem({super.key,});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
      child: Container(
        padding: EdgeInsets.all(AppConstants.sp20(context)),
        decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(AppConstants.sp10(context)),
            border: Border.all(
                color: const Color(0xffF1F5F9)
            )
        ),
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*.05,
              width:AppConstants.width5(context),
              decoration: BoxDecoration(
                  color:  const Color(0xffF4BD0E),
                  borderRadius: BorderRadius.circular(AppConstants.sp20(context))
              ),
            ),
            SizedBox(width: AppConstants.width10(context),),
            Expanded(child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Art Day",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.height*.014,
                    color: const Color(0xff000000)
                ),),
                SizedBox(height: AppConstants.height5(context),),
                Text("Tomorrow",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.height*.014,
                    color: const Color(0x80000000)
                ),),
              ],
            ),),
            SizedBox(width: AppConstants.width10(context),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("09:00 AM",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.height*.014,
                    color: const Color(0xff000000)
                ),),
                SizedBox(height: AppConstants.height5(context),),
                Text("21 may,2024",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.height*.014,
                    color: const Color(0xff000000)
                ),),
              ],
            ),



          ],
        ),
      ),
    );
  }
}
