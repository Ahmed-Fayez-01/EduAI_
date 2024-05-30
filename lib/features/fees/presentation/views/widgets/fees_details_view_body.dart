import 'package:eduai_parent/features/payment/presentation/views/payment_methods_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/colors/colors.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../notifications/presentation/views/notification_view.dart';

class FeesDetailsViewBody extends StatelessWidget {
  const FeesDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: AppConstants.height10(context),
        ),
        CustomAppBar(
          prefixIcon: AssetData.back,
          prefixIconTap: () {
            Navigator.pop(context);
          },
          title: "Fees Details",
          suffixIcon: AssetData.bell,
          suffixIconTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationView()));
          },
        ),
        SizedBox(
          height: AppConstants.height10(context),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
          child: Container(
            padding: EdgeInsets.all(AppConstants.sp10(context)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppConstants.sp10(context)),
                color: Colors.white,
                border: Border.all(color: const Color(0x1A000000)),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xffF1F5F9),
                      blurRadius: 8,
                      spreadRadius: 0,
                      offset: Offset(0, 8))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Student: Ahmed Fayez",
                  style: TextStyle(
                    color: const Color(0xff041631),
                    fontSize: MediaQuery.of(context).size.height * .014,
                    fontWeight: FontWeight.w500,
                  ),),
                SizedBox(height: AppConstants.height10(context),),
                Text("Grade: Grade 5",
                  style: TextStyle(
                    color: const Color(0xff041631),
                    fontSize: MediaQuery.of(context).size.height * .014,
                    fontWeight: FontWeight.w500,
                  ),),
                SizedBox(height: AppConstants.height10(context),),
                Text("Term: Term 2",
                  style: TextStyle(
                    color: const Color(0xff041631),
                    fontSize: MediaQuery.of(context).size.height * .014,
                    fontWeight: FontWeight.w500,
                  ),),
                SizedBox(height: AppConstants.height10(context),),
                const Divider(
                  color: Color(0xffE2E8F0),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppConstants.width20(context),
                      vertical: AppConstants.height10(context)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              "Item",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height *
                                          .014,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff041631)),
                            ),
                          ),
                        ],
                      )),
                      SizedBox(width: AppConstants.width20(context),),
                      Expanded(
                          flex: 1,
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(

                            child: Text(
                              "Amount",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height *
                                          .014,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff041631)),
                            ),
                          ),
                        ],
                      )),
                      SizedBox(width: AppConstants.width20(context),),
                      Expanded(
                          flex: 1,
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              "Description",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height *
                                          .014,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff041631)),
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
               Column(
                 children: List.generate(3, (index){
                   return  Padding(
                     padding: EdgeInsets.symmetric(
                         horizontal: AppConstants.width20(context)),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(
                           height: AppConstants.height10(context),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Expanded(
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Expanded(
                                       child: Text(
                                         "Extra-curricular Activities",
                                         style: TextStyle(
                                             fontSize: MediaQuery.of(context)
                                                 .size
                                                 .height *
                                                 .012,
                                             fontWeight: FontWeight.w500,
                                             color: const Color(0xff526484)),
                                       ),
                                     ),
                                   ],
                                 )),
                             SizedBox(width: AppConstants.width20(context),),
                             Expanded(
                               flex: 1,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Expanded(
                                       child: Text(
                                         "1000 L.E",
                                         style: TextStyle(
                                             fontSize: MediaQuery.of(context)
                                                 .size
                                                 .height *
                                                 .012,
                                             fontWeight: FontWeight.w500,
                                             color: const Color(0xff526484)),
                                       ),
                                     ),
                                   ],
                                 )),
                             SizedBox(width: AppConstants.width20(context),),
                             Expanded(
                                 flex: 1,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Expanded(
                                       child: Text(
                                         "School Bus",
                                         style: TextStyle(
                                             fontSize: MediaQuery.of(context)
                                                 .size
                                                 .height *
                                                 .012,
                                             fontWeight: FontWeight.w500,
                                             color: const Color(0xff526484)),
                                       ),
                                     ),
                                   ],
                                 )),
                           ],
                         ),
                       ],
                     ),
                   );
                 }),
               ),
                SizedBox(height: AppConstants.height10(context),),
                const Divider(
                  color: Color(0xffE2E8F0),
                ),
                SizedBox(height: AppConstants.height10(context),),
                Text("Outstanding Fees: 13000 L.E",
                  style: TextStyle(
                    color: const Color(0xff041631),
                    fontSize: MediaQuery.of(context).size.height * .014,
                    fontWeight: FontWeight.w500,
                  ),),
                SizedBox(height: AppConstants.height10(context),),
                Text(
                  "Payment Date: 20 May,2024",
                  style: TextStyle(
                    color: const Color(0xff041631),
                    fontSize: MediaQuery.of(context).size.height * .014,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: AppConstants.height20(context),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentMethodsView()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppConstants.width10(context),
                        vertical: AppConstants.height5(context)),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius:
                          BorderRadius.circular(AppConstants.width5(context)),
                    ),
                    child: Text(
                      "Pay Fees",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height * .016,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
