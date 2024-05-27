import 'package:cached_network_image/cached_network_image.dart';
import 'package:eduai_parent/features/chat/presentation/views/chat_conversation_view.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utils/colors/colors.dart';
import '../../../../../core/utils/constants.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChatConversationView()));
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
        child: Column(
          children: [
            const Divider(
              color: Color(0xffF1F5F9),
            ),
            SizedBox(height: AppConstants.height5(context),),
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
                    height: MediaQuery.of(context).size.height * 0.065,
                    width: MediaQuery.of(context).size.height * 0.065,
                  ),
                ),
                SizedBox(
                  width: AppConstants.width10(context),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Ahmed Fayez",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: MediaQuery.of(context).size.height * .016,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(width: AppConstants.width20(context),),
                          Text(
                            "04:45 am",
                            style: TextStyle(
                              color: const Color(0xff94A3B8),
                              fontSize: MediaQuery.of(context).size.height * .012,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Hi, good morning"*9,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: const Color(0xff526484),
                                fontSize: MediaQuery.of(context).size.height * .012,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(width: AppConstants.width10(context),),
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.height*.012,
                            backgroundColor: AppColors.primaryColor,
                            child: Text("99+", style: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.height * .011,
                              fontWeight: FontWeight.w500,
                            ),),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
