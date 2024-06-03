import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/shared_widgets/default_text_form_field.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class StudentInfoItem extends StatelessWidget {
  StudentInfoItem({super.key});
  var studentName= TextEditingController();
  var studentUserName= TextEditingController();
  var studentPassword= TextEditingController();
  @override
  Widget build(BuildContext context) {
    studentName.text="Nada Mohammed Hady";
    studentUserName.text="@nada_mohammed";
    studentPassword.text="1234567890";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
              child:Text("Student name :",style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height*.016,
                  fontWeight: FontWeight.w600
              ),),
            ),
            SizedBox(height: AppConstants.height10(context),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
              child: DefaultTextFormField(
                borderSideEnabledColor: const Color(0xffE2E8F0),
                contentPaddingHorizontal: AppConstants.height20(context),
                contentPaddingVertical: AppConstants.height20(context),
                fillColor: Colors.transparent,
                suffixIcon: SvgPicture.asset(AssetData.copy,fit: BoxFit.scaleDown,),
                onPressSuffixIcon: (){},
                readOnly: true,
                maxLines: 1,
                style: TextStyle(
                    color: const Color(0xff041631),
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.height*.014
                ),textInputType: TextInputType.text, controller: studentName,hintText: "Your Name",),
            ),
          ],
        ),
        SizedBox(height: AppConstants.height20(context),),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
              child:Text("Student’s user name :",style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height*.016,
                  fontWeight: FontWeight.w600
              ),),
            ),
            SizedBox(height: AppConstants.height10(context),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
              child: DefaultTextFormField(
                borderSideEnabledColor: const Color(0xffE2E8F0),
                contentPaddingHorizontal: AppConstants.height20(context),
                contentPaddingVertical: AppConstants.height20(context),
                fillColor: Colors.transparent,
                suffixIcon: SvgPicture.asset(AssetData.copy,fit: BoxFit.scaleDown,),
                onPressSuffixIcon: (){},
                readOnly: true,
                maxLines: 1,
                style: TextStyle(
                    color: const Color(0xff041631),
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.height*.014
                ),textInputType: TextInputType.text, controller: studentUserName,hintText: "Your Name",),
            ),
          ],
        ),
        SizedBox(height: AppConstants.height20(context),),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
              child:Text("Student’s password :",style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height*.016,
                  fontWeight: FontWeight.w600
              ),),
            ),
            SizedBox(height: AppConstants.height10(context),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
              child: DefaultTextFormField(
                borderSideEnabledColor: const Color(0xffE2E8F0),
                contentPaddingHorizontal: AppConstants.height20(context),
                contentPaddingVertical: AppConstants.height20(context),
                fillColor: Colors.transparent,
                suffixIcon: SvgPicture.asset(AssetData.copy,fit: BoxFit.scaleDown,),
                onPressSuffixIcon: (){},
                readOnly: true,
                maxLines: 1,
                style: TextStyle(
                    color: const Color(0xff041631),
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.height*.014
                ),textInputType: TextInputType.text, controller: studentPassword,hintText: "Your Name",),
            ),
          ],
        ),
      ],
    );
  }
}
