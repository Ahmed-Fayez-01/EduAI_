import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/shared_widgets/build_model_bottom_sheet.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class SelectSonItem extends StatelessWidget {
  const SelectSonItem({super.key, this.withBack=false});
  final bool? withBack;
  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: (){
        buildModelBottomSheet(context);
      },
      child: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if(withBack!)
            InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  AssetData.back,
                  width: MediaQuery.of(context).size.height * .06,
                )),
            SizedBox(width: AppConstants.width10(context),),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [

                      Text("Nada Mohammed",style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*.016,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff041631)
                      ),),
                      SizedBox(width: AppConstants.width10(context),),
                      SvgPicture.asset(AssetData.drop),
                    ],
                  ),
                  Text("Tap to switch profiles",style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height*.012,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff6B7280)
                  ),)
                ],
              ),
            ),
            InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  AssetData.bell,
                  width: MediaQuery.of(context).size.height * .06,
                )),
          ],
        ),
      ),
    );
  }
}
