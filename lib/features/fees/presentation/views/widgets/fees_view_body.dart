import 'package:eduai_parent/features/fees/presentation/views/widgets/fees_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../son_profile/presentation/views/widgets/select_son_item.dart';

class FeesViewBody extends StatelessWidget {
  const FeesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppConstants.height20(context),
        ),
        const SelectSonItem(withBack: true,),
        SizedBox(
          height: AppConstants.height20(context),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
            return const FeesItem();
          }, separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: AppConstants.height10(context),);
          },),
        ),
      ],
    );
  }
}
