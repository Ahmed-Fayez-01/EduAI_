import 'package:eduai_parent/features/son_profile/presentation/views/widgets/sons_widget.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

Future buildModelBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppConstants.sp30(context)),
            topRight: Radius.circular(AppConstants.sp30(context))),
      ),
      builder: (BuildContext bc) {
        return const SonWidget();
      });
}
