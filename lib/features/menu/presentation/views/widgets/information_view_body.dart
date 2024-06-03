import 'package:eduai_parent/features/menu/presentation/views/widgets/general_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class InformationViewBody extends StatelessWidget {
  const InformationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppConstants.height10(context),
        ),
        CustomAppBar(prefixIcon: AssetData.back,prefixIconTap: (){
          Navigator.pop(context);
        }, title: "Information",),
        SizedBox(
          height: AppConstants.height20(context),
        ),
        const GeneralItem(title: "About us", icon: AssetData.menuInfo),
         SizedBox(height: AppConstants.height30(context),),
        const GeneralItem(title: "Help & Support", icon: AssetData.menuSupport),
         SizedBox(height: AppConstants.height30(context),),
        const GeneralItem(title: "Rate us", icon: AssetData.menuRate),
         SizedBox(height: AppConstants.height30(context),),
        const GeneralItem(title: "Privacy policy", icon: AssetData.menuPrivacy),
         SizedBox(height: AppConstants.height30(context),),
        const GeneralItem(title: "Terms and condrions", icon: AssetData.menuTerms),
      ],
    );
  }
}
