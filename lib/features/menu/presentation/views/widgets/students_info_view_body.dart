import 'package:easy_localization/easy_localization.dart';
import 'package:eduai_parent/features/menu/presentation/views/widgets/student_info_item.dart';
import 'package:eduai_parent/features/payment/presentation/views/confirm_deposit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/shared_widgets/custom_button.dart';
import '../../../../../core/shared_widgets/default_text_form_field.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class StudentsInfoViewBody extends StatefulWidget {
  const StudentsInfoViewBody({super.key});

  @override
  State<StudentsInfoViewBody> createState() => _StudentsInfoViewBodyState();
}

class _StudentsInfoViewBodyState extends State<StudentsInfoViewBody> {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(
          height: AppConstants.height10(context),
        ),
        CustomAppBar(prefixIcon: AssetData.back,prefixIconTap: (){
          Navigator.pop(context);
        }, title: "Student's information's",),
        SizedBox(
          height: AppConstants.height20(context),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
            return   StudentInfoItem();
          }, separatorBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.all(AppConstants.sp20(context)),
                child: const Divider(color: Color(0xffE2E8F0),),
              );
          },),
        ),
                  
        SizedBox(height: AppConstants.height20(context),),
      ],
    );
  }
}
