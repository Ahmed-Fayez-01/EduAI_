import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/shared_widgets/custom_button.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/colors/colors.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/text_styles/styles.dart';
import '../../view_models/select_son/select_son_cubit.dart';

class SonWidget extends StatefulWidget {
  const SonWidget({super.key});

  @override
  State<SonWidget> createState() => _SonWidgetState();
}

class _SonWidgetState extends State<SonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
         ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: AppConstants.height10(context),
          ),
          Padding(
            padding:
            EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: Column(
              children: [
                SizedBox(
                  height: AppConstants.height10(context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(onTap: (){
                      Navigator.pop(context);
                    },child: SvgPicture.asset(AssetData.cancel,width: MediaQuery.of(context).size.height*.025,)),
                    SizedBox(width: AppConstants.width10(context),),
                    Text(
                      "Select your child’s profile",
                      style: Styles.cairoW500S12White(context)
                          .copyWith(color: const Color(0xff6B7280)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            color: Color(0x80E2E8F0),
          ),
          SizedBox(
            height: AppConstants.height10(context),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppConstants.width20(context)),
            child: BlocBuilder<SelectSonCubit,SelectSonState>(
                builder: (context,state) {
                  return Column(
                    children: List.generate(5, (index){
                      return InkWell(
                        onTap: (){
                          context.read<SelectSonCubit>().selectSon(index);
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(AppConstants.width5(context))
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(AssetData.male,width: MediaQuery.of(context).size.height*.035,),
                                  SizedBox(width:AppConstants.width5(context)),
                                  Text("Ahmed Fayez Abdelfatah",style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: MediaQuery.of(context).size.height*.014,
                                      color: const Color(0xff041631)
                                  ),),
                                  SizedBox(width: AppConstants.width10(context),),
                                  Text("(Grade 5)",style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: MediaQuery.of(context).size.height*.014,
                                      color: const Color(0xff898A8D)
                                  ),),
                                ],
                              ),
                              SizedBox(height: AppConstants.height10(context),),
                              const Divider(
                                color: Color(0x80E2E8F0),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  );
                }
            ),
          ),
          SizedBox(height: AppConstants.height10(context),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AssetData.plus,width: MediaQuery.of(context).size.height*.025,),
              SizedBox(width: AppConstants.width10(context),),
              Text("Add New Student",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: MediaQuery.of(context).size.height*.014,
                  color: AppColors.primaryColor
              ),),
            ],
          ),
          SizedBox(height: AppConstants.height10(context),),
        ],
      ),
    );
  }
}
