
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/colors/colors.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/text_styles/styles.dart';
import '../../view_models/change_tabs_cubit/schedule_tabs_cubit.dart';
import '../../view_models/change_tabs_cubit/schedule_tabs_states.dart';

class ScheduleTabsItem extends StatelessWidget {
  const ScheduleTabsItem({super.key, required this.categories});

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.05,
      child: BlocBuilder<ScheduleTabsCubit,ScheduleTabsStates>(
        builder: (context,state) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  context.read<ScheduleTabsCubit>().changeScheduleTabs(index);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if(index==0)
                      SizedBox(width: AppConstants.width20(context),),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppConstants.width20(context),
                          vertical: AppConstants.height10(context)),
                      margin: EdgeInsetsDirectional.only(
                          end: AppConstants.width5(context)),
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x0D364A63),
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: Offset(0,1)
                          )
                        ],
                        border: Border.all(
                          color: context.read<ScheduleTabsCubit>().selectedTab == index ?AppColors.primaryColor:const Color(0xffF1F5F9)
                        ),
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.circular(AppConstants.width5(context)),

                        // color:
                      ),
                      child: Text(
                        categories[index],
                        style: Styles.cairoW500S12White(context).copyWith(
                          color: context.read<ScheduleTabsCubit>().selectedTab == index
                              ? AppColors.primaryColor
                              : const Color(0xff041631),
                          fontWeight:context.read<ScheduleTabsCubit>().selectedTab == index ? FontWeight.w600 :FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    if(index==categories.length-1)
                      SizedBox(width: AppConstants.width20(context),),
                  ],
                ),
              );
            },
            itemCount: categories.length,
          );
        }
      ),
    );
  }
}
