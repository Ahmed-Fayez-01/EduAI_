import 'package:eduai_parent/core/shared_widgets/custom_app_bar.dart';
import 'package:eduai_parent/core/utils/assets/assets.dart';
import 'package:eduai_parent/core/utils/constants.dart';
import 'package:eduai_parent/features/notifications/presentation/views/notification_view.dart';
import 'package:flutter/material.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: AppConstants.height20(context),
        ),
        CustomAppBar(prefixIcon: AssetData.menu, title: "Monday, 20",suffixIcon: AssetData.bell,suffixIconTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationView()));
      },),
        SizedBox(
          height: AppConstants.height10(context),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi Ahmed,",
                style: TextStyle(
                  color: const Color(0xff041631),
                  fontSize: MediaQuery.of(context).size.height * .018,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Let’s track what you want",
                style: TextStyle(
                  color: const Color(0xff526484),
                  fontSize: MediaQuery.of(context).size.height * .014,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: AppConstants.height10(context),
        ),

      ],
    );
  }
}
