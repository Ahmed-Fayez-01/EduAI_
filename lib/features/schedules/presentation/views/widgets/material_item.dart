import 'package:eduai_parent/core/utils/assets/assets.dart';
import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/constants.dart';

class MaterialItem extends StatefulWidget {
  const MaterialItem({super.key, required this.index});
  final int index;

  @override
  State<MaterialItem> createState() => _MaterialItemState();
}

class _MaterialItemState extends State<MaterialItem> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context),vertical: AppConstants.height10(context)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppConstants.sp10(context)),
            color: Colors.white,
            border: Border.all(
                color: const Color(0xffF1F5F9)
            )
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*.07,
                    width:AppConstants.width5(context),
                    decoration: BoxDecoration(
                        color:  AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(AppConstants.sp20(context))
                    ),
                  ),
                  SizedBox(width: AppConstants.width10(context),),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Science lesson",maxLines: 3,overflow: TextOverflow.ellipsis,style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*.014,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff041631)
                      ),),
                      SizedBox(height: AppConstants.height10(context),),
                      Text("Grade 5",style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*.012,
                          fontWeight: FontWeight.w500,
                          color: const Color(0x80000000)
                      ),),
                    ],
                  )),
                  SizedBox(width: AppConstants.width10(context),),
                 CircleAvatar(
                   radius: MediaQuery.of(context).size.height*.015,
                   backgroundColor: AppColors.primaryColor,
                   child: SvgPicture.asset(AssetData.right,width: MediaQuery.of(context).size.height*.012,color: Colors.white,),
                 )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
