import 'package:cached_network_image/cached_network_image.dart';
import 'package:eduai_parent/core/shared_widgets/main_title_item.dart';
import 'package:eduai_parent/core/utils/constants.dart';
import 'package:eduai_parent/features/reports/presentation/views/report_view.dart';
import 'package:eduai_parent/features/son_profile/presentation/views/widgets/daily_plan_item.dart';
import 'package:eduai_parent/features/son_profile/presentation/views/widgets/coming_event_item.dart';
import 'package:eduai_parent/features/son_profile/presentation/views/widgets/select_son_item.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/shared_widgets/custom_button.dart';
import '../../../../../core/utils/colors/colors.dart';
import 'academic_progress_item.dart';

class SonProfileViewBody extends StatelessWidget {
  const SonProfileViewBody({super.key});

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
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppConstants.width20(context)),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height * .07,
                        ),
                        child: CachedNetworkImage(
                          width: MediaQuery.of(context).size.height * .07,
                          height: MediaQuery.of(context).size.height * .07,
                          imageUrl:
                              "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                          placeholder: (context, url) => Shimmer.fromColors(
                            baseColor: Colors.grey[900]!,
                            highlightColor: Colors.grey[200]!,
                            child: Container(
                              width: MediaQuery.of(context).size.height * .07,
                              height: MediaQuery.of(context).size.height * .07,
                              decoration: const BoxDecoration(
                                color: Colors.black12,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: AppConstants.width10(context),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child: Text(
                                  "Ahmed Fayez Abdelfatah",
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .016,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff041631)),
                                )),
                                SizedBox(
                                  width: AppConstants.width10(context),
                                ),
                                Text(
                                  "Student",
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .014,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff000000)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: AppConstants.height5(context),
                            ),
                            Text(
                              "Grade 5",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height * .014,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0x80000000)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppConstants.height20(context),
                ),
                const DailyPlanItem(),
                SizedBox(
                  height: AppConstants.height20(context),
                ),
                const MainTitleItem(title: "Upcoming Events"),
                SizedBox(
                  height: AppConstants.height10(context),
                ),
                const ComingEventItem(),
                SizedBox(
                  height: AppConstants.height10(context),
                ),
                const MainTitleItem(title: "Academic Progress"),
                SizedBox(
                  height: AppConstants.height5(context),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppConstants.width20(context)),
                  child: Text(
                    "This Semester",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .014,
                        fontWeight: FontWeight.w500,
                        color: const Color(0x80000000)),
                  ),
                ),
                SizedBox(
                  height: AppConstants.height10(context),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppConstants.width20(context)),
                  child: Row(
                    children: [
                      const AcademicProgressItem(
                        title: "GPA",
                        value: "3.64",
                        charValue: '+4%',
                      ),
                      SizedBox(
                        width: AppConstants.width10(context),
                      ),
                      const AcademicProgressItem(
                        title: "Attendance",
                        value: "84%",
                        charValue: '+4%',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppConstants.height10(context),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppConstants.width20(context)),
                  child: Row(
                    children: [
                      const AcademicProgressItem(
                        title: "Class Participation",
                        value: "Good",
                        charValue: '+4%',
                      ),
                      SizedBox(
                        width: AppConstants.width10(context),
                      ),
                      const AcademicProgressItem(
                        title: "Student Behavior",
                        value: "Good",
                        charValue: '+4%',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: AppConstants.height20(context),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppConstants.width20(context),
                  ),
                  child: DefaultButton(
                    onPress: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReportView()));
                    },
                    text: "View Reports",
                    height: AppConstants.height15(context),
                    textColor: AppColors.primaryColor,
                    hasBorder: true,
                    backgroundColor: Colors.white,
                    borderRadius: AppConstants.sp10(context),
                  ),
                ),
                SizedBox(
                  height: AppConstants.height20(context),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
