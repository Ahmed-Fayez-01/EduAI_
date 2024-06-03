import 'package:eduai_parent/features/fees/presentation/views/fees_view.dart';
import 'package:eduai_parent/features/menu/presentation/views/edit_profile_view.dart';
import 'package:eduai_parent/features/menu/presentation/views/feedback_view.dart';
import 'package:eduai_parent/features/menu/presentation/views/information_view.dart';
import 'package:eduai_parent/features/menu/presentation/views/setting_view.dart';
import 'package:eduai_parent/features/menu/presentation/views/students_info_view.dart';
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
            MenuItem(title: "Edit Profile", icon: AssetData.editProfile,onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditProfileView()));
            },),
            MenuItem(title: "Settings", icon: AssetData.setting,onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SettingView()));
            },),
            MenuItem(title: "Fees", icon: AssetData.fees,onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const FeesView()));
            },),
          ],
        ),
        SizedBox(height: AppConstants.height20(context),),
         Row(
          children: [
            MenuItem(title: "Feedback", icon: AssetData.feedback,onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const FeedbackView()));
            },),
            MenuItem(title: "Information", icon: AssetData.info,onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const InformationView()));
            },),
            MenuItem(title: "News", icon: AssetData.news,onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const NewsView()));
            },),
          ],
        ),
        SizedBox(height: AppConstants.height20(context),),
        Row(
          children: [
            MenuItem(title: "Student Info", icon: AssetData.editProfile,onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const StudentsInfoView()));
            },),
            const MenuItem(title: "Logout", icon: AssetData.logout),
            const Expanded(child: SizedBox()),
          ],
        ),
      ],
    );
  }
}
