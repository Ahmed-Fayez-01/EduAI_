import 'package:eduai_parent/core/utils/assets/assets.dart';
import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:eduai_parent/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';

class BusDetailsViewBody extends StatelessWidget {
  final List<DeliveryStatus> statuses = [
    DeliveryStatus('Starting Point: Maadi District', '6:30 AM', true,["Pass through El Nasr Street.","Stop at El Nasr Street station for students in the area."]),
    DeliveryStatus('Head towards El Nasr Street', '6:30 AM', true,["Pass through El Nasr Street.","Stop at El Nasr Street station for students in the area."]),
    DeliveryStatus('Head to Dokki District', '6:30 AM', true,["Pass through El Nasr Street.","Stop at El Nasr Street station for students in the area."]),
    DeliveryStatus('Ending Point: Dokki District', '6:30 AM', false,["Pass through El Nasr Street.","Stop at El Nasr Street station for students in the area."]),
    DeliveryStatus('Ending Point: Dokki District', '6:30 AM', false,["Pass through El Nasr Street.","Stop at El Nasr Street station for students in the area."]),
    DeliveryStatus('Ending Point: Dokki District', '6:30 AM', false,["Pass through El Nasr Street.","Stop at El Nasr Street station for students in the area.","Stop at El Nasr Street station for students in the area.","Stop at El Nasr Street station for students in the area."]),
  ];

  BusDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppConstants.height10(context),
        ),
        CustomAppBar(
          prefixIcon: AssetData.back,
          prefixIconTap: () {
            Navigator.pop(context);
          },
          title: "Rode Details",
        ),
        SizedBox(
          height: AppConstants.height20(context),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:AppConstants.width20(context)),
          child: Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: statuses.length,
                itemBuilder: (context, index) {
                  final status = statuses[index];
                  return TimelineTile(
                    alignment: TimelineAlign.start,
                    beforeLineStyle: LineStyle(
                        color: status.isCompleted ? AppColors.primaryColor : const Color(0xffE2E2E2)
                    ),
                    afterLineStyle: LineStyle(
                        color: status.isCompleted ? AppColors.primaryColor : const Color(0xffE2E2E2)
                    ),
                    indicatorStyle: IndicatorStyle(
                      indicatorXY: 0,
                      width: AppConstants.width10(context),
                      color: status.isCompleted ? AppColors.primaryColor : const Color(0xffE2E2E2),
                    ),

                    endChild: Padding(
                      padding: EdgeInsets.symmetric(horizontal:AppConstants.width20(context) ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  status.title,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height*.014,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              if (status.timestamp.isNotEmpty)
                                Text(
                                  status.timestamp,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height*.014,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff6B7280)
                                  ),
                                ),
                            ],
                          ),
                          SizedBox(height: AppConstants.height10(context),),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: AppConstants.width10(context)),
                            child: Column(
                              children: List.generate(status.details.length, (index){
                                return Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: AppConstants.height5(context)),
                                          child: Container(
                                            width: AppConstants.width5(context),
                                            height: AppConstants.width5(context),
                                            decoration: const BoxDecoration(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: AppConstants.width10(context),),
                                        Expanded(child: Text(status.details[index],style: TextStyle(
                                          fontSize: MediaQuery.of(context).size.height*.012,
                                          fontWeight: FontWeight.w500,
                                        ),)),
                                      ],
                                    ),
                                    SizedBox(height: AppConstants.height5(context),),
                                  ],
                                );
                              }),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
             Transform.translate(offset:  Offset(-MediaQuery.of(context).size.height*.015,AppConstants.width10(context)),child: SvgPicture.asset(AssetData.lineLocation,fit: BoxFit.cover,width: MediaQuery.of(context).size.height*.045,))

            ],
          ),
        ),
      ],
    );
  }
}

class DeliveryStatus {
  final String title;
  final String timestamp;
  final List<String> details;
  final bool isCompleted;

  DeliveryStatus(this.title, this.timestamp, this.isCompleted, this.details);
}
