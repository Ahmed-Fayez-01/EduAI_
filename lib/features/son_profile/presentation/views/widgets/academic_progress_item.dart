import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class AcademicProgressItem extends StatelessWidget {
  const AcademicProgressItem({super.key, required this.title, required this.value, required this.charValue});
  final String title;
  final String value;
  final String charValue;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:AppConstants.width20(context),vertical: AppConstants.height10(context)),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color(0xffF1F5F9),
              blurRadius: 8,
              spreadRadius: 0,
              offset: Offset(0, 8)
            )
          ],
          border: Border.all(
              color: const Color(0xffF1F5F9)
          ),
          borderRadius: BorderRadius.circular(AppConstants.sp10(context)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(
                fontSize: MediaQuery.of(context).size.height*.014,
                fontWeight: FontWeight.w500,
                color: const Color(0x80000000)
            ),),
            SizedBox(height: AppConstants.height5(context),),
            Text(value,style: TextStyle(
                fontSize: MediaQuery.of(context).size.height*.02,
                fontWeight: FontWeight.w600,
                color: const Color(0xff000000)
            ),),
            SizedBox(height: AppConstants.height5(context),),
            Text(charValue,style: TextStyle(
                fontSize: MediaQuery.of(context).size.height*.016,
                fontWeight: FontWeight.w500,
                color: const Color(0xff129727)
            ),),
          ],
        ),
      ),
    );
  }
}
