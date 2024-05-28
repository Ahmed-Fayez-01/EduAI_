import 'package:flutter/material.dart';

import '../utils/constants.dart';

class MainTitleItem extends StatelessWidget {
  const MainTitleItem({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
      child: Text(
        title,
        style: TextStyle(
          color: const Color(0xff041631),
          fontSize: MediaQuery.of(context).size.height * .02,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
