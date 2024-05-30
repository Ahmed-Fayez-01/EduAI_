import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';
import '../../view_model/change_nav_bar_status/change_nav_bar_status_cubit.dart';
import 'bottom_nav_bar_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> icons = [
      AssetData.home,
      AssetData.calender,
      AssetData.editProfile,
      AssetData.grades,
      AssetData.bus,
    ];
    List<String> titles = [
      "Home",
      "Schedule",
      "Students",
      "Grades",
      "Bus",
    ];
    return Material(
      elevation: 30,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        padding: EdgeInsets.symmetric(
            horizontal: AppConstants.width15(context), vertical: AppConstants.height5(context)),
        child: BlocBuilder<ChangeNavBarStatusCubit, ChangeNavBarStatusState>(builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              titles.length,
              (index) => BottomNavBarItem(
                icon: icons[index],
                title: titles[index],
                index: index,
              ),
            ),
          );
        }),
      ),
    );
  }
}
