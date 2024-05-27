import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:eduai_parent/core/shared_widgets/capitalize_extention.dart';
import 'package:eduai_parent/core/utils/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/colors/colors.dart';
import '../utils/constants.dart';

class EventTimeLine extends StatefulWidget {
  const EventTimeLine({super.key, this.hasSwapper = false});

  final bool? hasSwapper;

  @override
  State<EventTimeLine> createState() => _EventTimeLineState();
}

class _EventTimeLineState extends State<EventTimeLine> {
  late DateTime _focusDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.hasSwapper!)
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      if (DateTime(_focusDate.year, _focusDate.month,
                              _focusDate.day - 1)
                          .isAfter(DateTime(2024, 5, 16))) {
                        _focusDate = DateTime(_focusDate.year, _focusDate.month,
                            _focusDate.day - 1);
                      }
                    });
                    print(_focusDate);
                  },
                  child: Container(
                    padding: EdgeInsets.all(AppConstants.sp10(context)),
                    decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xffCBD5E1)
                      )
                    ),
                    child: SvgPicture.asset(AssetData.left,width: MediaQuery.of(context).size.height*.01,fit: BoxFit.contain,),
                  )
                ),
                Expanded(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${DateFormat('EEEE').format(_focusDate)},${_focusDate.day}",style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .018,
                        fontWeight: FontWeight.w600),),
                  ],
                )),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (DateTime(_focusDate.year, _focusDate.month,
                              _focusDate.day + 1)
                          .isBefore(DateTime(2024, 5, 26))) {
                        _focusDate = DateTime(_focusDate.year, _focusDate.month,
                            _focusDate.day + 1);
                      }
                    });
                    print(_focusDate);
                  },
                    child: Container(
                      padding: EdgeInsets.all(AppConstants.sp10(context)),
                      decoration:  BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: const Color(0xffCBD5E1)
                          )
                      ),
                      child: SvgPicture.asset(AssetData.right,width: MediaQuery.of(context).size.height*.01,fit: BoxFit.contain,),
                    )
                ),
              ],
            ),
          ),
        if (widget.hasSwapper!)
          SizedBox(height: AppConstants.height20(context),),
        EasyInfiniteDateTimeLine(
          // controller: _controller,
          showTimelineHeader: false,
          firstDate: DateTime(2024, 5, 17),
          focusDate: _focusDate,
          lastDate: DateTime(2024, 5, 25),
          onDateChange: (selectedDate) {
            setState(() {
              _focusDate = selectedDate;
            });
          },
          dayProps: EasyDayProps(
            height: MediaQuery.of(context).size.height * .1,
            // You must specify the width in this case.
            width: MediaQuery.of(context).size.width * .16,
          ),
          itemBuilder: ( BuildContext context,
              DateTime date,
              bool isSelected,
              VoidCallback onTap,) {
            return Column(
              children: [
                InkResponse(
                  onTap: onTap,
                  child: Container(
                    //the same width that provided previously.
                    width: MediaQuery.of(context).size.width * .15,
                    height: MediaQuery.of(context).size.height * .075,
                    padding: EdgeInsets.symmetric(
                        horizontal: AppConstants.width10(context)),
                    decoration: BoxDecoration(
                        color: isSelected
                            ? AppColors.primarySwatchColor
                            : Colors.white,
                        borderRadius:
                            BorderRadius.circular(AppConstants.sp10(context)),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x0D364A63),
                            blurRadius: 4,
                            spreadRadius: 0,
                            offset: Offset(0, 1),
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          date.day.toString(),
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * .014,
                              fontFamily: "Sora",
                              fontWeight: FontWeight.w600,
                              color: isSelected
                                  ? Colors.white
                                  : const Color(0xff848A94)),
                        ),
                        Text(
                          date.weekday.toString().capitalize(),
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.height * .012,
                              fontFamily: "Sora",
                              fontWeight: FontWeight.w600,
                              color: isSelected
                                  ? Colors.white
                                  : const Color(0xff848A94)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
