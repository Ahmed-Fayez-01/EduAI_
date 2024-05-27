import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class HomeWorkItem extends StatefulWidget {
  const HomeWorkItem({super.key,});
  @override
  State<HomeWorkItem> createState() => _HomeWorkItemState();
}

class _HomeWorkItemState extends State<HomeWorkItem> {

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
            Text(
              "Science",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * .014,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff041631)),
            ),
            SizedBox(
              height: AppConstants.height5(context),
            ),
            Text(
              "Solve the exercises in the book, p.12",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * .012,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff6B7280)),
            ),
            SizedBox(
              height: AppConstants.height5(context),
            ),
            Text(
              "Due Date: Next Sunday , 25th May, 2024",
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
