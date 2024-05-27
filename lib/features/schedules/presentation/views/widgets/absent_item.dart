import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class AbsentItem extends StatelessWidget {
  const AbsentItem({super.key, required this.isAbsent});
  final bool isAbsent;
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("09:00 AM",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.height*.012,
                    color: const Color(0xff000000)
                ),),
                SizedBox(height: AppConstants.height5(context),),
                Text("09:45 AM",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.height*.012,
                    color: const Color(0xff898A8D)
                ),),
              ],
            ),
            SizedBox(width: AppConstants.width10(context),),
            Container(
              height: MediaQuery.of(context).size.height*.07,
              width:AppConstants.width5(context),
              decoration: BoxDecoration(
                  color:  isAbsent?const Color(0xffCB1000):const Color(0xff488F10),
                  borderRadius: BorderRadius.circular(AppConstants.sp20(context))
              ),
            ),
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
                Text("Room 9",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: MediaQuery.of(context).size.height*.012,
                    color: const Color(0xff898A8D)
                ),),
              ],
            ),),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width10(context),vertical: AppConstants.height5(context)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppConstants.sp15(context)),
                color:isAbsent?const Color(0xffCB1000): const Color(0xff488F10)
              ),
              child: Text(isAbsent?"Absent":"Present",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: MediaQuery.of(context).size.height*.012,
                color: Colors.white
              ),),
            )

          ],
        ),
      ),
    );
  }
}
