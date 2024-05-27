import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/colors/colors.dart';
import '../../../../../core/utils/constants.dart';

class LanguageViewBody extends StatefulWidget {
  const LanguageViewBody({super.key});

  @override
  State<LanguageViewBody> createState() => _LanguageViewBodyState();
}

class _LanguageViewBodyState extends State<LanguageViewBody> {
  int selectedLanguage = 0;
  List<String> languageNames = [
    "Arabic",
    "English",
    "French",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppConstants.height20(context),
        ),
        CustomAppBar(
          prefixIcon: AssetData.back,
          title: "Language",
          prefixIconTap: () {
            Navigator.pop(context);
          },
          subTitle: "Save",
          onTitleTap: () {},
          hasTitleNotIcon: true,
        ),
        SizedBox(
          height: AppConstants.height20(context),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: AppConstants.width15(context)),
          child: Column(
            children: List.generate(
              3,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedLanguage = index;
                  });
                },
                child: Container(
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: AppConstants.width20(context),
                      vertical: AppConstants.height20(context)),
                  margin: EdgeInsetsDirectional.symmetric(
                    vertical: AppConstants.height5(context),
                  ),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppConstants.sp10(context)),
                      border:
                          Border.all(color: const Color(0xffE2E8F0), width: 1)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          languageNames[index],
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * .016,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(width: AppConstants.width10(context)),
                      Container(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.height*.004),
                        width: AppConstants.width20(context) + MediaQuery.of(context).size.height*.003,
                        height: AppConstants.width20(context) + MediaQuery.of(context).size.height*.003,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: selectedLanguage == index
                                    ?AppColors.primaryColor: const Color(0xff526484),
                                width: selectedLanguage == index ? 1 : 1)),
                        child: Container(
                          width: AppConstants.width20(context),
                          height: AppConstants.width20(context),
                          decoration: BoxDecoration(
                              color: selectedLanguage == index
                                  ? AppColors.primaryColor
                                  : null,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: selectedLanguage == index
                                      ? AppColors.primaryColor
                                      : Colors.transparent,
                                  width: selectedLanguage == index ? 1 : 1)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
