import 'package:eduai_parent/core/shared_widgets/main_title_item.dart';
import 'package:eduai_parent/features/son_profile/presentation/views/widgets/daily_plan_list_item.dart';
import 'package:eduai_parent/features/son_profile/presentation/views/widgets/select_son_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class DailyPlansViewBody extends StatelessWidget {
  const DailyPlansViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: AppConstants.height20(context),
        ),
        const SelectSonItem(),
        SizedBox(
          height: AppConstants.height20(context),
        ),
        const MainTitleItem(title: "Daily Plans"),
        SizedBox(
          height: AppConstants.height10(context),
        ),
        Expanded(
            child: ListView.separated(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                if (index == 0)
                  SizedBox(
                    height: AppConstants.height10(context),
                  ),
                const DailyPlanListItem(),
                if (index == 9)
                  SizedBox(
                    height: AppConstants.height20(context),
                  ),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: AppConstants.height10(context),
            );
          },
        )),
      ],
    );
  }
}
