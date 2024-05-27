import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../utils/assets/assets.dart';
import '../utils/constants.dart';
import '../utils/services/local_services/cache_helper.dart';
import 'custom_button.dart';

Future logout({
  required BuildContext context,
}) =>
    showDialog(
        context: context,
        builder: (context) =>
            AlertDialog(
              title: SvgPicture.asset(AssetData.logout,width: MediaQuery.of(context).size.width*.1,),

              actions: [
                Column(
                  children: [
                    Text(
                      "already_leaving".tr(),
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height*.02,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: AppConstants.height10(context),),
                    DefaultButton(onPress: () {
                      CacheHelper.removeData(key: "token");
                      CacheHelper.removeData(key: "userId");
                      CacheHelper.removeData(key: "name");
                     GoRouter.of(context).go("/introView");
                    },
                      text: "yes_logout".tr(),
                      backgroundColor: const Color(0xffC32B43),
                      borderRadius: AppConstants.sp10(context),
                      fontSize: MediaQuery.of(context).size.height*.018,
                    ),
                    TextButton(
                       onPressed: () {
                         Navigator.pop(context);
                       }, child:  Text("no_stay".tr(),style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height*.018,
                      color: const Color(0xffA5A5A5)
                    ),),
                    ),
                  ],
                ),
              ],
            ));
