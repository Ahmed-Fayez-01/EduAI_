import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/shared_widgets/default_text_form_field.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class ChatConversationViewBody extends StatefulWidget {
  const ChatConversationViewBody({super.key});

  @override
  State<ChatConversationViewBody> createState() => _ChatConversationViewBodyState();
}

class _ChatConversationViewBodyState extends State<ChatConversationViewBody> {
  var message=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: AppConstants.height20(context),
        ),
        CustomAppBar(prefixIcon: AssetData.back,prefixIconTap: (){
          Navigator.pop(context);
        }, title: "Chat",),
        SizedBox(
          height: AppConstants.height20(context),
        ),
        Expanded(
          child: Column(
            children: [
              Directionality(
                textDirection: TextDirection.rtl,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                  child: Container(
                    padding: EdgeInsets.all(AppConstants.sp20(context)),
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(AppConstants.sp10(context))

                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Lorem ipsum dolor sit amet. Morbi aenean Lorem ipsum ",  style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.height * .016,
                            color: Colors.white
                        ),),
                        SizedBox(height: AppConstants.height10(context),),
                        Text("08:43 مساء",  style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.of(context).size.height * .012,
                            color: const Color(0xffF1F5F9)
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: AppConstants.height10(context),),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                    child: Container(
                      padding: EdgeInsets.all(AppConstants.sp20(context)),
                      decoration: BoxDecoration(
                          color: const Color(0xffE2E8F0),
                          borderRadius: BorderRadius.circular(AppConstants.sp10(context))

                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Lorem ipsum ",  style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: MediaQuery.of(context).size.height * .016,
                              color: const Color(0xff041631)
                          ),),
                          SizedBox(height: AppConstants.height10(context),),
                          Text("08:43 مساء",  style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: MediaQuery.of(context).size.height * .012,
                              color: const Color(0xff041631)
                          ),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: AppConstants.width10(context),),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context),vertical: AppConstants.height10(context)),
          decoration: const BoxDecoration(
            color: Colors.white
          ),
          child: Row(
            children: [
              Expanded(
                child: DefaultTextFormField(
                  onChange: (v){

                  },
                  suffixIcon:  SvgPicture.asset(AssetData.camera,fit: BoxFit.scaleDown,),
                  hasBorder: false,
                  fillColor: const Color(0xffF1F5F9),
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: MediaQuery.of(context).size.height*.018
                  ),textInputType: TextInputType.text, controller: message,),
              ),
              SvgPicture.asset(AssetData.send,fit: BoxFit.scaleDown,),
            ],
          ),
        ),
      ],
    );
  }
}
