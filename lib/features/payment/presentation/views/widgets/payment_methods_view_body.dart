import 'package:eduai_parent/features/payment/presentation/views/bank_card_view.dart';
import 'package:eduai_parent/features/payment/presentation/views/cash_view.dart';
import 'package:eduai_parent/features/payment/presentation/views/wallet_view.dart';
import 'package:eduai_parent/features/payment/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/constants.dart';

class PaymentMethodsViewBody extends StatelessWidget {
  const PaymentMethodsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: AppConstants.height10(context),
        ),
        CustomAppBar(prefixIcon: AssetData.back,prefixIconTap: (){
          Navigator.pop(context);
        }, title: "Payment Method",),
        SizedBox(
          height: AppConstants.height10(context),
        ),
       PaymentMethodItem(title: "Bank Card", icon: AssetData.creditCard,onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>const BankCardView()));
       },),
       SizedBox(height: AppConstants.height20(context),),
       PaymentMethodItem(title: "Wallet", icon: AssetData.wallet,onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>const WalletView()));
       },),
        SizedBox(height: AppConstants.height20(context),),
       PaymentMethodItem(title: "Cash deposit", icon: AssetData.money,onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>const CashView()));
       },),
      ],
    );
  }
}
