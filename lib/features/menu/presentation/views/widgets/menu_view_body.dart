import 'package:eduai_parent/features/fees/presentation/views/fees_view.dart';
import 'package:eduai_parent/features/menu/presentation/views/widgets/menu_item.dart';
import 'package:eduai_parent/features/news/presentation/views/news_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class MenuViewBody extends StatelessWidget {
  const MenuViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppConstants.height10(context),
        ),
        CustomAppBar(prefixIcon: AssetData.back,prefixIconTap: (){
          Navigator.pop(context);
        }, title: "Menu Actions",),
        SizedBox(
          height: AppConstants.height20(context),
        ),
         Row(
          children: [
            const MenuItem(title: "Edit Profile", icon: AssetData.editProfile),
            const MenuItem(title: "Settings", icon: AssetData.setting),
            MenuItem(title: "Fees", icon: AssetData.fees,onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const FeesView()));
            },),
          ],
        ),
        SizedBox(height: AppConstants.height20(context),),
         Row(
          children: [
            const MenuItem(title: "Feedback", icon: AssetData.feedback),
            const MenuItem(title: "Information", icon: AssetData.info),
            MenuItem(title: "News", icon: AssetData.news,onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const NewsView()));
            },),
          ],
        ),
        SizedBox(height: AppConstants.height20(context),),
        const Row(
          children: [
            MenuItem(title: "Student Info", icon: AssetData.editProfile),
            MenuItem(title: "Logout", icon: AssetData.logout),
            Expanded(child: SizedBox()),
          ],
        ),
      ],
    );
  }
}
