import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utils/constants.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key, required this.isRead});
  final bool isRead;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppConstants.width20(context)),
      decoration: BoxDecoration(
        color: isRead? Colors.white :const Color(0xffE2E8F0),
      ),
      child: Row(
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
                Text(
                  "Lorem ipsum dolor sit amet consectetur. Morbi aenean ut ipsum .",
                  style: TextStyle(
                    color: const Color(0xff041631),
                    fontSize: MediaQuery.of(context).size.height * .016,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: AppConstants.height5(context),),
                Text(
                  "1h ago",
                  style: TextStyle(
                    color: const Color(0xff526484),
                    fontSize: MediaQuery.of(context).size.height * .012,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
