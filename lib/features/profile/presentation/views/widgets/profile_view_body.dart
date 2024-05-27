import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/shared_widgets/default_text_form_field.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';
import '../language_view.dart';
import '../view_models/upload_image_profile/upload_image_profile_cubit.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  var name=TextEditingController();
  var email=TextEditingController();
  var phone=TextEditingController();
  var gender=TextEditingController();
  var language=TextEditingController();
  @override
  Widget build(BuildContext context) {
    name.text="Ahmed Fayez";
    email.text="ahmed.drengg@gmail.com";
    phone.text="01158368887";
    gender.text="Male";
    language.text="Language";
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: AppConstants.height20(context),
          ),
          CustomAppBar( title: "Edit Profile",subTitle: "Save",onTitleTap: (){},hasTitleNotIcon: true,),
          SizedBox(height: AppConstants.height20(context),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlocConsumer<UploadImageProfileCubit, UploadImageProfileState>(
                  builder: (context, state) {
                    var teacherUploadImageProfileCubit =
                    UploadImageProfileCubit.get(context);
                    return Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            teacherUploadImageProfileCubit.profileImage != null
                                ? Container(
                              height: MediaQuery.of(context).size.height * .11,
                              width: MediaQuery.of(context).size.height * .11,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.height * .11,
                                ),
                                color: Colors.grey[200],
                              ),
                              child: ClipRRect(
                                clipBehavior: Clip.hardEdge,
                                borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.height * .11,
                                ),
                                child: ColorFiltered(
                                  colorFilter: const ColorFilter.mode(
                                      Colors.black12, BlendMode.darken),
                                  child: Image.file(
                                    teacherUploadImageProfileCubit.profileImage!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )
                                : Container(
                              height: MediaQuery.of(context).size.height * .11,
                              width: MediaQuery.of(context).size.height * .11,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.height * .11,
                                ),
                                color: Colors.grey[200],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.height * .15,
                                ),
                                child: CachedNetworkImage(
                                  placeholder: (context, url) => Shimmer.fromColors(
                                    baseColor: Colors.grey[400]!,
                                    highlightColor: Colors.grey[200]!,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                  errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                                  imageUrl:
                                  "https://www.iprcenter.gov/image-repository/blank-profile-picture.png",
                                  fit: BoxFit.contain,
                                  width: double.infinity,
                                  height: MediaQuery.of(context).size.height * 0.15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Transform.translate(
                          offset: Offset(AppConstants.width30(context), AppConstants.height5(context)),
                          child: InkWell(
                            onTap: (){
                              teacherUploadImageProfileCubit
                                  .selectProfileImage();
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: MediaQuery.of(context).size.height*.02,
                              child: CircleAvatar(
                                backgroundColor: const Color(0xff002055),
                                radius: MediaQuery.of(context).size.height*.02-3,
                                child: SvgPicture.asset(AssetData.uploadImage,width: MediaQuery.of(context).size.height*.02,),
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                  listener: (BuildContext context, state) async {
                    if (state is SelectProfileImageSuccessState) {
                      AppConstants.file = state.image;
                    }
                  },
                ),
                SizedBox(height: AppConstants.height20(context),),
                Text(
                  "Ahmed Fayez AbdelFatah",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height * .016,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: AppConstants.height5(context),),
                Text(
                  "English Teacher",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: const Color(0xff526484),
                    fontSize: MediaQuery.of(context).size.height * .014,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: AppConstants.height20(context),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: Text(
              "General",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: const Color(0xff041631),
                fontSize: MediaQuery.of(context).size.height * .018,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: AppConstants.height20(context),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: DefaultTextFormField(
              validationMsg: "This Field is Required",
              borderSideEnabledColor: const Color(0xffE2E8F0),
              contentPaddingVertical: AppConstants.height20(context),
              fillColor: Colors.transparent,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.height*.015
              ),textInputType: TextInputType.text, controller: name,),
          ),
          SizedBox(height: AppConstants.height10(context),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: DefaultTextFormField(
              validationMsg: "This Field is Required",
              borderSideEnabledColor: const Color(0xffE2E8F0),
              contentPaddingVertical: AppConstants.height20(context),
              fillColor: Colors.transparent,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.height*.015
              ),textInputType: TextInputType.text, controller: email,),
          ),
          SizedBox(height: AppConstants.height10(context),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: DefaultTextFormField(
              validationMsg: "This Field is Required",
              borderSideEnabledColor: const Color(0xffE2E8F0),
              contentPaddingVertical: AppConstants.height20(context),
              fillColor: Colors.transparent,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.height*.015
              ),textInputType: TextInputType.text, controller: phone,),
          ),
          SizedBox(height: AppConstants.height10(context),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: DefaultTextFormField(
              validationMsg: "This Field is Required",
              borderSideEnabledColor: const Color(0xffE2E8F0),
              contentPaddingVertical: AppConstants.height20(context),
              fillColor: Colors.transparent,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.height*.015
              ),textInputType: TextInputType.text, controller: gender,),
          ),
          SizedBox(height: AppConstants.height10(context),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: DefaultTextFormField(
              validationMsg: "This Field is Required",
              borderSideEnabledColor: const Color(0xffE2E8F0),
              contentPaddingVertical: AppConstants.height20(context),
              fillColor: Colors.transparent,
              readOnly: true,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const LanguageView()));
              },
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.height*.015
              ),textInputType: TextInputType.text, controller: language,),
          ),

        ],
      ),
    );
  }
}
