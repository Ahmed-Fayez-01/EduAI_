import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:eduai_parent/features/schedules/presentation/views/widgets/absent_summary_item.dart';
import 'package:eduai_parent/features/schedules/presentation/views/widgets/exam_item.dart';
import 'package:eduai_parent/features/schedules/presentation/views/widgets/grade_book_item.dart';
import 'package:eduai_parent/features/schedules/presentation/views/widgets/schedule_tabs_item.dart';
import 'package:eduai_parent/features/schedules/presentation/views/widgets/time_table_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/shared_widgets/event_time_line.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';
import 'material_item.dart';
import '../../../../home/presentation/views/widgets/title_with_icon_widget.dart';
import '../../../../notifications/presentation/views/notification_view.dart';
import '../../view_models/change_tabs_cubit/schedule_tabs_cubit.dart';
import '../../view_models/change_tabs_cubit/schedule_tabs_states.dart';
import 'absent_item.dart';
import 'home_work_item.dart';

class ScheduleViewBody extends StatelessWidget {
  const ScheduleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppConstants.height20(context),
        ),
        CustomAppBar(
          prefixIcon: AssetData.menu,
          title: "Schedule",
          suffixIcon: AssetData.bell,
          suffixIconTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationView()));
          },
        ),
        SizedBox(
          height: AppConstants.height30(context),
        ),
        const EventTimeLine(
          hasSwapper: true,
        ),
        const ScheduleTabsItem(
            categories: ["Materials", "Homework", "Attendance", "Exams","Time Table","Grade Book"]),
        SizedBox(
          height: AppConstants.height20(context),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: BlocBuilder<ScheduleTabsCubit, ScheduleTabsStates>(
                builder: (context, state) {
              if (context.read<ScheduleTabsCubit>().selectedTab == 0) {
                return Column(
                  children: [
                    const TitleWithIconWidget(
                        icon: AssetData.material, title: "Today's Materials"),
                    SizedBox(
                      height: AppConstants.height10(context),
                    ),
                    ListView.separated(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return MaterialItem(
                          index: index,
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: AppConstants.height10(context),
                        );
                      },
                    ),
                    SizedBox(height: AppConstants.height20(context),),
                  ],
                );
              } else if (context.read<ScheduleTabsCubit>().selectedTab == 1) {
                return Column(
                  children: [
                    const TitleWithIconWidget(
                        icon: AssetData.material, title: "Today's Homework"),
                    SizedBox(
                      height: AppConstants.height10(context),
                    ),
                    ListView.separated(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return HomeWorkItem(
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: AppConstants.height10(context),
                        );
                      },
                    ),
                    SizedBox(height: AppConstants.height20(context),),
                  ],
                );
              } else if(context.read<ScheduleTabsCubit>().selectedTab == 2){
                return Column(
                  children: [
                    const TitleWithIconWidget(
                        icon: AssetData.material, title: "Today's Classes"),
                    SizedBox(
                      height: AppConstants.height20(context),
                    ),
                    ListView.separated(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return  AbsentItem(isAbsent: index>2?true:false,);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(height: AppConstants.height10(context),);
                      },
                    ),
                    SizedBox(height: AppConstants.height20(context),),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Attendance Summary",style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.height*.014,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff000000)
                                    ),),
                                    Text("Last 30 Days",style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.height*.014,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0x80000000)
                                    ),),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(AppConstants.sp10(context)),
                                decoration: BoxDecoration(
                                  border:Border.all(
                                    color: const Color(0xffF1F5F9)
                                  )
                                ),
                                child: Row(
                                  children: [
                                    Text("View Full Report",style: TextStyle(
                                        fontSize: MediaQuery.of(context).size.height*.014,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.primaryColor
                                    ),),
                                    SizedBox(width: AppConstants.width5(context),),
                                    SvgPicture.asset(AssetData.right,color: AppColors.primaryColor,width: MediaQuery.of(context).size.height*.01,),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: AppConstants.height10(context),),
                          Row(
                            children: [
                             const AbsentSummaryItem(title: "Total Classes", value: "15"),
                             SizedBox(width: AppConstants.width10(context),),
                             const AbsentSummaryItem(title: "Present", value: "15"),
                            ],
                          ),
                          SizedBox(height: AppConstants.height10(context),),
                          Row(
                            children: [
                              const AbsentSummaryItem(title: "Absent", value: "15"),
                              SizedBox(width: AppConstants.width10(context),),
                              const AbsentSummaryItem(title: "Late", value: "15"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: AppConstants.height20(context),),
                  ],
                );
              }else if(context.read<ScheduleTabsCubit>().selectedTab == 3){
                return Column(
                  children: [
                    const TitleWithIconWidget(
                        icon: AssetData.material, title: "Today's Exams"),
                    SizedBox(
                      height: AppConstants.height10(context),
                    ),
                    ListView.separated(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return const ExamItem();
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: AppConstants.height10(context),
                        );
                      },
                    ),
                    SizedBox(height: AppConstants.height20(context),),
                  ],
                );
              }else if(context.read<ScheduleTabsCubit>().selectedTab == 4)
                {
                  return Column(
                    children: [
                      const TitleWithIconWidget(
                          icon: AssetData.material, title: "Today's Classes"),
                      SizedBox(
                        height: AppConstants.height20(context),
                      ),
                      ListView.separated(
                        itemCount: 5,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return  TimeTableItem(isBreak: index>3?true:false,);
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(height: AppConstants.height10(context),);
                        },
                      ),
                      SizedBox(height: AppConstants.height10(context),),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                        child: Row(
                          children: [
                            Text("Dowenload weekly class timetable",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: MediaQuery.of(context).size.height*.014,
                                color: AppColors.primaryColor
                            ),),
                            SizedBox(width: AppConstants.width5(context),),
                            SvgPicture.asset(AssetData.download,width: MediaQuery.of(context).size.height*.025,),


                          ],
                        ),
                      ),
                      SizedBox(height: AppConstants.height20(context),),
                    ],
                  );
                }else{
                return Column(
                  children: [
                    const TitleWithIconWidget(
                        icon: AssetData.material, title: "Grade Books"),
                    SizedBox(
                      height: AppConstants.height20(context),
                    ),
                    ListView.separated(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return  const GradeBookItem();
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(height: AppConstants.height10(context),);
                      },
                    ),
                    SizedBox(height: AppConstants.height10(context),),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                      child: Row(
                        children: [
                          Text("Download All Books",style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: MediaQuery.of(context).size.height*.014,
                              color: AppColors.primaryColor
                          ),),
                          SizedBox(width: AppConstants.width5(context),),
                          SvgPicture.asset(AssetData.download,width: MediaQuery.of(context).size.height*.025,),
                      
                      
                        ],
                      ),
                    ),
                    SizedBox(height: AppConstants.height20(context),),
                  ],
                );
              }
            }),
          ),
        ),
      ],
    );
  }
}
