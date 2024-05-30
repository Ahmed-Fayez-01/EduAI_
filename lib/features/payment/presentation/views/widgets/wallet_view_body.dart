import 'package:eduai_parent/features/payment/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class  WalletViewBody extends StatelessWidget {
  const WalletViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: AppConstants.height10(context),
        ),
        CustomAppBar(prefixIcon: AssetData.back,prefixIconTap: (){
          Navigator.pop(context);
        }, title: "Wallet",),
        SizedBox(
          height: AppConstants.height10(context),
        ),
        PaymentMethodItem(title: "Fawry Pay", icon: AssetData.vodafone,onTap: (){},),
        SizedBox(height: AppConstants.height20(context),),
        PaymentMethodItem(title: "Vodafone Cash", icon: AssetData.vodafone,onTap: (){},),
      ],
    );
  }
}
