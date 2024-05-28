import 'package:cached_network_image/cached_network_image.dart';
import 'package:eduai_parent/core/utils/text_styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/shared_widgets/default_text_form_field.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class NewsItem extends StatefulWidget {
  const NewsItem({super.key, required this.hasImage});

  final bool hasImage;

  @override
  State<NewsItem> createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {
  var comment = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
      child: Container(
        padding: EdgeInsets.all(AppConstants.sp20(context)),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppConstants.width5(context)),
            border: Border.all(color: const Color(0xffF1F5F9)),
            boxShadow: const [
              BoxShadow(
                color: Color(0x0D364A63),
                blurRadius: 4,
                spreadRadius: 0,
                offset: Offset(0, 1),
              )
            ]),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.height * 0.15,
                  ),
                  child: CachedNetworkImage(
                    placeholder: (context, url) => Shimmer.fromColors(
                      baseColor: Colors.grey[400]!,
                      highlightColor: Colors.grey[200]!,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    imageUrl:
                        "https://www.lovepanky.com/wp-content/uploads/2020/11/what-makes-a-man-a-man-1.jpg",
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.height * 0.06,
                  ),
                ),
                SizedBox(
                  width: AppConstants.width10(context),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Admin",
                      style: TextStyle(
                        color: const Color(0xff041631),
                        fontSize: MediaQuery.of(context).size.height * .016,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "1h ago",
                      style: TextStyle(
                        color: const Color(0xff526484),
                        fontSize: MediaQuery.of(context).size.height * .012,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: AppConstants.height10(context),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                  start: AppConstants.width20(context)),
              child: Text(
                "Lorem ipsum dolor sit amet consectetur. Morbi aenean ut ipsum sed integer quis nunc. Augue nulla laoreet mattis enim ",
                style: TextStyle(
                  color: const Color(0xff041631),
                  fontSize: MediaQuery.of(context).size.height * .014,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: AppConstants.height20(context),
            ),
            if (widget.hasImage)
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  AppConstants.sp10(context),
                ),
                child: CachedNetworkImage(
                  placeholder: (context, url) => Shimmer.fromColors(
                    baseColor: Colors.grey[400]!,
                    highlightColor: Colors.grey[200]!,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppConstants.sp10(context),
                          ),
                          color: Colors.grey),
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageUrl:
                      "https://www.lovepanky.com/wp-content/uploads/2020/11/what-makes-a-man-a-man-1.jpg",
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            const Divider(
              color: Color(0xffF1F5F9),
            ),
            Row(
              children: [
                SvgPicture.asset(
                  AssetData.favourite,
                  width: MediaQuery.of(context).size.height * .025,
                ),
                SizedBox(
                  width: AppConstants.width10(context),
                ),
                SvgPicture.asset(
                  AssetData.comment,
                  width: MediaQuery.of(context).size.height * .025,
                ),
                SizedBox(
                  width: AppConstants.width10(context),
                ),
                SvgPicture.asset(
                  AssetData.sendComment,
                  width: MediaQuery.of(context).size.height * .025,
                ),
              ],
            ),
            SizedBox(
              height: AppConstants.height20(context),
            ),
            Column(
              children: List.generate(2, (index) {
                return  Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.height * 0.15,
                          ),
                          child: CachedNetworkImage(
                            placeholder: (context, url) => Shimmer.fromColors(
                              baseColor: Colors.grey[400]!,
                              highlightColor: Colors.grey[200]!,
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.grey, shape: BoxShape.circle),
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                            imageUrl:
                            "https://www.lovepanky.com/wp-content/uploads/2020/11/what-makes-a-man-a-man-1.jpg",
                            fit: BoxFit.fill,
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.height * 0.06,
                          ),
                        ),
                        SizedBox(
                          width: AppConstants.width10(context),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(AppConstants.sp10(context)),
                                decoration: BoxDecoration(
                                  color: Color(0x99D9D9D9),
                                  borderRadius: BorderRadius.circular(AppConstants.width5(context))
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ahmed Fayez",
                                      style: TextStyle(
                                        color: const Color(0xff041631),
                                        fontSize: MediaQuery.of(context).size.height * .016,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "lorem ipsum do"*5,
                                      style: TextStyle(
                                        color: const Color(0xff526484),
                                        fontSize: MediaQuery.of(context).size.height * .012,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                "1h ago",
                                style: TextStyle(
                                  color: const Color(0xff526484),
                                  fontSize: MediaQuery.of(context).size.height * .01,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: AppConstants.height10(context),),
                  ],
                );
              }),

            ),
            SizedBox(
              height: AppConstants.height20(context),
            ),
            DefaultTextFormField(
              borderSideEnabledColor: const Color(0xffE2E8F0),
              contentPaddingVertical: AppConstants.height10(context),
              fillColor: const Color(0x99D9D9D9),
              suffixIcon: SvgPicture.asset(
                AssetData.sendComment,
                fit: BoxFit.scaleDown,
              ),
              maxLines: 1,
              hintStyle: Styles.hintText(context).copyWith(
                  color: const Color(0xff526484),
                  fontSize: MediaQuery.of(context).size.height * .012),
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.of(context).size.height * .017),
              textInputType: TextInputType.text,
              controller: comment,
              hintText: "Add Comment...",
            ),
          ],
        ),
      ),
    );
  }
}
