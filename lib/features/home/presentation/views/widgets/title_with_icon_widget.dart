import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/constants.dart';

class TitleWithIconWidget extends StatelessWidget {
  const TitleWithIconWidget({super.key, required this.icon, required this.title});
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
      child: Row(
        children: [
          SvgPicture.asset(icon,width: MediaQuery.of(context).size.height*.025,),
          SizedBox(width: AppConstants.width5(context),),
          Text(title,style: TextStyle(
              fontSize: MediaQuery.of(context).size.height*.014,
              fontWeight: FontWeight.w600,
              color: const Color(0xff041631)
          ),),
        ],
      ),
    );
  }
}
