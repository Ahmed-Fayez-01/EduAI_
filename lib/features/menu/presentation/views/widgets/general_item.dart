import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';
import 'custom_switch.dart';

class GeneralItem extends StatelessWidget {
  const GeneralItem({super.key, required this.title, required this.icon, this.onTap, this.isSwitch=false});
  final String title;
  final String icon;
  final bool? isSwitch;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            SvgPicture.asset(icon,color: const Color(0xff141B34),width: MediaQuery.of(context).size.height*.025,),
            SizedBox(width: AppConstants.width10(context),),
            Expanded(child: Text(title,style: TextStyle(
              fontSize: MediaQuery.of(context).size.height*.016,
              fontWeight: FontWeight.w600,
            ),)),
            SizedBox(width: AppConstants.width10(context),),
            isSwitch!? SmallSwitch(value: true, onChanged: (value){},):
            SvgPicture.asset(AssetData.right,width: MediaQuery.of(context).size.height*.01,),
          ],
        ),
      ),
    );
  }
}
