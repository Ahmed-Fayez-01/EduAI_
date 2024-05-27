import 'package:cached_network_image/cached_network_image.dart';
import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:eduai_parent/features/chat/presentation/views/widgets/chat_item.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../notifications/presentation/views/notification_view.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: AppConstants.height20(context),
        ),
        CustomAppBar(prefixIcon: AssetData.menu, title: "Chat",suffixIcon: AssetData.bell,suffixIconTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationView()));
        },),
        Expanded(
          child: ListView.separated(
            itemCount: 19,
            itemBuilder: (BuildContext context, int index) { 
            return const ChatItem();
          }, separatorBuilder: (BuildContext context, int index) { 
            return SizedBox(height: AppConstants.height10(context),);
          },),
        ),
      ],
    );
  }
}
