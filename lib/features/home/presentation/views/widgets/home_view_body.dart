import 'package:eduai_parent/core/shared_widgets/custom_app_bar.dart';
import 'package:eduai_parent/core/shared_widgets/custom_button.dart';
import 'package:eduai_parent/core/shared_widgets/custom_dropdown_formfield.dart';
import 'package:eduai_parent/core/shared_widgets/main_title_item.dart';
import 'package:eduai_parent/core/utils/assets/assets.dart';
import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:eduai_parent/core/utils/constants.dart';
import 'package:eduai_parent/features/notifications/presentation/views/notification_view.dart';
import 'package:eduai_parent/features/son_profile/presentation/views/son_profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: AppConstants.height20(context),
        ),
        CustomAppBar(prefixIcon: AssetData.menu, title: "Home",suffixIcon: AssetData.bell,suffixIconTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationView()));
      },),
        SizedBox(
          height: AppConstants.height10(context),
        ),
     
     Expanded(
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Padding(
               padding:
               EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     "Hi Ahmed,",
                     style: TextStyle(
                       color: const Color(0xff041631),
                       fontSize: MediaQuery.of(context).size.height * .018,
                       fontWeight: FontWeight.w600,
                     ),
                   ),
                   Text(
                     "Let’s track what you want",
                     style: TextStyle(
                       color: const Color(0xff526484),
                       fontSize: MediaQuery.of(context).size.height * .014,
                       fontWeight: FontWeight.w500,
                     ),
                   ),
                 ],
               ),
             ),
             SizedBox(
               height: AppConstants.height20(context),
             ),
             const MainTitleItem(title: "Today's Events"),
             SizedBox(
               height: AppConstants.height20(context),
             ),
             Padding(
               padding:   EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
               child: Container(
                 decoration: BoxDecoration(
                     border: Border.all(
                         color: const Color(0xffE7ECFB)
                     ),
                     borderRadius: BorderRadius.circular(AppConstants.sp10(context)),
                     color: Colors.white
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context),vertical: AppConstants.height10(context)),
                       decoration: BoxDecoration(
                         color: const Color(0xffE7ECFB),
                         borderRadius: BorderRadius.only(topLeft: Radius.circular(AppConstants.sp10(context)),topRight: Radius.circular(AppConstants.sp10(context)) ),
                       ),
                       child: Row(
                         children: [
                           Expanded(child: Text("Today",style: TextStyle(
                             color:  AppColors.primaryColor,
                             fontSize: MediaQuery.of(context).size.height * .014,
                             fontWeight: FontWeight.w500,
                           ),)),
                           Row(
                             children: [
                               SvgPicture.asset(AssetData.clock,color: AppColors.primaryColor,width: MediaQuery.of(context).size.height*.025,),
                               SizedBox(width: AppConstants.width5(context),),
                               Text("04:00 - 43 Min",style: TextStyle(
                                 color: AppColors.primaryColor,
                                 fontSize: MediaQuery.of(context).size.height * .014,
                                 fontWeight: FontWeight.w500,
                               ),)
                             ],
                           )
                         ],
                       ),
                     ),
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(height: AppConstants.height10(context),),
                           Text(
                             "Parent - teacher meeting!",
                             style: TextStyle(
                               color: Colors.black,
                               fontSize: MediaQuery.of(context).size.height * .014,
                               fontWeight: FontWeight.w500,
                             ),
                           ),
                           SizedBox(height: AppConstants.height10(context),),
                           Text(
                             "Academic Progress",
                             style: TextStyle(
                               color: const Color(0xff6B7280),
                               fontSize: MediaQuery.of(context).size.height * .014,
                               fontWeight: FontWeight.w500,
                             ),
                           ),
                           SizedBox(height: AppConstants.height20(context),),
                           Container(
                             padding: EdgeInsets.symmetric(horizontal:AppConstants.width10(context),vertical: AppConstants.height5(context)),
                             decoration: BoxDecoration(
                               color: AppColors.primaryColor,
                               borderRadius: BorderRadius.circular(AppConstants.width5(context)),
                             ),
                             child: Text("Confirm Attendance", style: TextStyle(
                               color: Colors.white,
                               fontSize: MediaQuery.of(context).size.height * .016,
                               fontWeight: FontWeight.w500,
                             ),),
                           )
                         ],
                       ),
                     ),
                     SizedBox(height: AppConstants.height20(context),)
                   ],
                 ),
               ),
             ),
             SizedBox(
               height: AppConstants.height20(context),
             ),
             const MainTitleItem(title: "Upcoming Fees"),
             SizedBox(
               height: AppConstants.height20(context),
             ),
             Padding(
               padding:   EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
               child: Container(
                 decoration: BoxDecoration(
                     border: Border.all(
                         color: const Color(0xffE7ECFB)
                     ),
                     borderRadius: BorderRadius.circular(AppConstants.sp10(context)),
                     color: Colors.white
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(
                       padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context),vertical: AppConstants.height10(context)),
                       decoration: BoxDecoration(
                         color: const Color(0xffE7ECFB),
                         borderRadius: BorderRadius.only(topLeft: Radius.circular(AppConstants.sp10(context)),topRight: Radius.circular(AppConstants.sp10(context)) ),
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Expanded(child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Expanded(
                                 child: Text("Fee Type",textAlign: TextAlign.center,style: TextStyle(
                                   color:  AppColors.primaryColor,
                                   fontSize: MediaQuery.of(context).size.height * .014,
                                   fontWeight: FontWeight.w500,
                                 ),),
                               ),
                             ],
                           )),
                           Expanded(child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Expanded(
                                 child: Text("Payment Date",textAlign: TextAlign.center,style: TextStyle(
                                   color:  AppColors.primaryColor,
                                   fontSize: MediaQuery.of(context).size.height * .014,
                                   fontWeight: FontWeight.w500,
                                 ),),
                               ),
                             ],
                           )),
                           Expanded(child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Expanded(
                                 child: Text("Discount",textAlign: TextAlign.center,style: TextStyle(
                                   color:  AppColors.primaryColor,
                                   fontSize: MediaQuery.of(context).size.height * .014,
                                   fontWeight: FontWeight.w500,
                                 ),),
                               ),
                             ],
                           )),
                           Expanded(child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Expanded(
                                 child: Text("Amount",textAlign: TextAlign.center,style: TextStyle(
                                   color:  AppColors.primaryColor,
                                   fontSize: MediaQuery.of(context).size.height * .014,
                                   fontWeight: FontWeight.w500,
                                 ),),
                               ),
                             ],
                           )),
         
                         ],
                       ),
                     ),
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(height: AppConstants.height10(context),),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Expanded(child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Expanded(
                                     child: Text("Term 2",textAlign: TextAlign.center,style: TextStyle(
                                       fontSize: MediaQuery.of(context).size.height * .014,
                                       fontWeight: FontWeight.w500,
                                     ),),
                                   ),
                                 ],
                               )),
                               Expanded(child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Expanded(
                                     child: Text("12 Jun, 2024",textAlign: TextAlign.center,style: TextStyle(
                                       fontSize: MediaQuery.of(context).size.height * .014,
                                       fontWeight: FontWeight.w500,
                                     ),),
                                   ),
                                 ],
                               )),
                               Expanded(child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Expanded(
                                     child: Text("00.00",textAlign: TextAlign.center,style: TextStyle(
                                       fontSize: MediaQuery.of(context).size.height * .014,
                                       fontWeight: FontWeight.w500,
                                     ),),
                                   ),
                                 ],
                               )),
                               Expanded(child: Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Expanded(
                                     child: Text("8100.00",textAlign: TextAlign.center,style: TextStyle(
                                       fontSize: MediaQuery.of(context).size.height * .014,
                                       fontWeight: FontWeight.w500,
                                     ),),
                                   ),
                                 ],
                               )),
         
                             ],
                           ),
                           SizedBox(height: AppConstants.height30(context),),
                           Container(
                             padding: EdgeInsets.symmetric(horizontal:AppConstants.width10(context),vertical: AppConstants.height5(context)),
                             decoration: BoxDecoration(
                               color: AppColors.primaryColor,
                               borderRadius: BorderRadius.circular(AppConstants.width5(context)),
                             ),
                             child: Text("Pay Fees", style: TextStyle(
                               color: Colors.white,
                               fontSize: MediaQuery.of(context).size.height * .016,
                               fontWeight: FontWeight.w500,
                             ),),
                           )
                         ],
                       ),
                     ),
                     SizedBox(height: AppConstants.height20(context),)
                   ],
                 ),
               ),
             ),
             // SizedBox(height: AppConstants.height20(context),),
             // Padding(
             //   padding:
             //   EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
             //   child: Text(
             //     "Choose your child’s account",
             //     style: TextStyle(
             //       color: const Color(0xff041631),
             //       fontSize: MediaQuery.of(context).size.height * .016,
             //       fontWeight: FontWeight.w500,
             //     ),
             //   ),
             // ),
             // SizedBox(height: AppConstants.height10(context),),
             // Padding(
             //   padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
             //   child: CustomDropDownButton(value: "Ahmed Fayez",hintText: "hintText", onChanged: (v){}, items: const ["Ahmed Fayez","Ahmed Hatem","Hassan Mabrouk"], validator: (v){},height: AppConstants.height20(context)*3,prefixIcon: Container(
             //     height: AppConstants.height20(context)*2,
             //     width: AppConstants.width5(context),
             //     margin: EdgeInsetsDirectional.only(start: AppConstants.width10(context)),
             //     decoration: BoxDecoration(
             //       color: AppColors.primaryColor,
             //       borderRadius: BorderRadius.circular(AppConstants.sp30(context)),
             //     ),
             //   ),),
             // ),
             SizedBox(height: AppConstants.height20(context),),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
               child: DefaultButton(onPress: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const SonProfileView()));
               }, text: "Go to Fayez’s profile",borderRadius: AppConstants.sp10(context),height: AppConstants.height15(context),),
             ),
             SizedBox(height: AppConstants.height20(context),)
           ],
         ),
       ),
     )
      ],
    );
  }
}
