import 'package:eduai_parent/features/reports/presentation/views/report_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';
import 'general_item.dart';

class FeedbackViewBody extends StatelessWidget {
  const FeedbackViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: AppConstants.height10(context),
        ),
        CustomAppBar(prefixIcon: AssetData.back,prefixIconTap: (){
          Navigator.pop(context);
        }, title: "Feedback",),
        SizedBox(
          height: AppConstants.height20(context),
        ),
        GeneralItem(title: "Report", icon: AssetData.report,onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReportView()));
        },),
        SizedBox(height: AppConstants.height30(context),),
        const GeneralItem(title: "Suggestions", icon: AssetData.suggetion),
      ],
    );
  }
}
