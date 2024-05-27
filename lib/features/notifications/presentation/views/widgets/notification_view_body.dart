import 'package:cached_network_image/cached_network_image.dart';
import 'package:eduai_parent/features/notifications/presentation/views/widgets/notification_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: AppConstants.height20(context),
        ),
        CustomAppBar(prefixIcon: AssetData.back, title: "Notifications",prefixIconTap: (){
          Navigator.pop(context);
        },),
        SizedBox(
          height: AppConstants.height20(context),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
          child: Text(
            "New",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * .02,
                fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: AppConstants.height5(context),
        ),
        Expanded(child: ListView.separated(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
          return  NotificationItem(isRead: index==2||index==4? true:false,);
        }, separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: MediaQuery.of(context).size.height*.003,);
        },)),
      ],
    );
  }
}
