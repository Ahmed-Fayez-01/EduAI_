import 'package:eduai_parent/features/grades/presentation/view_models/select_time_type/setect_time_type_cubit.dart';
import 'package:eduai_parent/features/grades/presentation/views/widgets/time_tap_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../son_profile/presentation/views/widgets/select_son_item.dart';
import 'grade_item.dart';

class GradesViewBody extends StatelessWidget {
  const GradesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> timeType=["Day","Week","Month","Year"];
    return Column(
      children: [
        SizedBox(
          height: AppConstants.height20(context),
        ),
        const SelectSonItem(),
        SizedBox(
          height: AppConstants.height20(context),
        ),
        BlocBuilder<SelectTimeTypeCubit,SelectTimeTypeState>(
          builder: (context,state) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(timeType.length, (index){
                  return TimeTapItem(title: timeType[index], index: index);
                })
              ),
            );
          }
        ),
        SizedBox(
          height: AppConstants.height20(context),
        ),
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
          child: Container(
            padding: EdgeInsets.all(AppConstants.width5(context)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppConstants.width5(context))
            ),
            child: Row(
              children: [
                InkWell(
                    onTap: () {

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
                    Text("ToDay",style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * .016,
                        fontWeight: FontWeight.w600),),
                  ],
                )),
                InkWell(
                    onTap: () {

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
        ),
        SizedBox(
          height: AppConstants.height20(context),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
            return const GradeItem();
          }, separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: AppConstants.height5(context),);
          },),
        ),
      ],
    );
  }
}
