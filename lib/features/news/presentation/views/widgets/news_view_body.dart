import 'package:eduai_parent/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../notifications/presentation/views/notification_view.dart';
import 'news_item.dart';

class NewsViewBody extends StatelessWidget {
  const NewsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: AppConstants.height10(context),
        ),
        CustomAppBar(prefixIcon: AssetData.back,prefixIconTap: (){
          Navigator.pop(context);
        }, title: "News",suffixIcon: AssetData.bell,suffixIconTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationView()));
        },),
        SizedBox(
          height: AppConstants.height10(context),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
            return NewsItem(hasImage: index==0?true:false,);
          }, separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: AppConstants.height20(context));
          },),
        )
      ],
    );
  }
}
