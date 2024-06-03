import 'package:eduai_parent/features/menu/presentation/views/language_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';
import 'general_item.dart';

class SettingViewBody extends StatelessWidget {
  const SettingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: AppConstants.height10(context),
        ),
        CustomAppBar(prefixIcon: AssetData.back,prefixIconTap: (){
          Navigator.pop(context);
        }, title: "Settings",),
        SizedBox(
          height: AppConstants.height20(context),
        ),
        const GeneralItem(title: "Notifications", icon: AssetData.menuNotification,isSwitch: true,),
         SizedBox(height: AppConstants.height30(context),),
        const GeneralItem(title: "Dark mode", icon: AssetData.menuMode,isSwitch: true,),
        SizedBox(height: AppConstants.height10(context),),
        const Divider(
          color: Color(0xffE2E8F0),
        ),
        SizedBox(height: AppConstants.height10(context),),
        GeneralItem(title: "Language", icon: AssetData.menuLang,onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const LanguageView()));
        },),
         SizedBox(height: AppConstants.height30(context),),
        const GeneralItem(title: "Updates", icon: AssetData.menuUpdate),
      ],
    );
  }
}
