import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:eduai_parent/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../view_model/change_nav_bar_status/change_nav_bar_status_cubit.dart';

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({super.key, required this.icon, required this.index, required this.title});

  final String icon;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
            ChangeNavBarStatusCubit.get(context).changeNavBarIndex(index);
        },
        child: Container(
          padding: EdgeInsets.all( AppConstants.sp10(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                color: context.read<ChangeNavBarStatusCubit>().currentIndex==index?AppColors.primaryColor:const Color(0xff041631),
                width: MediaQuery.of(context).size.height*.03,
              ),
              SizedBox(height: AppConstants.height5(context),),
              Text(title,style: TextStyle(
                fontSize: MediaQuery.of(context).size.height*.012,
                fontWeight: FontWeight.w500,
                color: context.read<ChangeNavBarStatusCubit>().currentIndex==index?AppColors.primaryColor: const Color(0xff041631)
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
