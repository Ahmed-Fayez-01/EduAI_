import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.title, required this.icon, this.onTap});
  final String title;
  final String icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(AppConstants.sp10(context)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppConstants.sp10(context)),
                  color: const Color(0xff526484)
              ),
              child: SvgPicture.asset(icon,color: Colors.white,width: MediaQuery.of(context).size.height*.055,),
            ),
            SizedBox(height: AppConstants.height5(context),),
            Text(title,style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery.of(context).size.height*.014,
            ),)
          ],
        ),
      ),
    );
  }
}
