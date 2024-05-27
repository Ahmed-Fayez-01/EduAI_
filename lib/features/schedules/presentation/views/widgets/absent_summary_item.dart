import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class AbsentSummaryItem extends StatelessWidget {
  const AbsentSummaryItem({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        padding: EdgeInsets.all(AppConstants.sp20(context)),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: const Color(0xffF1F5F9)
          ),
          borderRadius: BorderRadius.circular(AppConstants.sp10(context)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(
                fontSize: MediaQuery.of(context).size.height*.016,
                fontWeight: FontWeight.w500,
                color: const Color(0x80000000)
            ),),
            SizedBox(height: AppConstants.height10(context),),
            Text(value,style: TextStyle(
                fontSize: MediaQuery.of(context).size.height*.022,
                fontWeight: FontWeight.w600,
                color: const Color(0xff000000)
            ),),
          ],
        ),
      ),
    );
  }
}
