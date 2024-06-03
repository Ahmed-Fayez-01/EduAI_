import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:eduai_parent/features/grades/presentation/view_models/select_time_type/setect_time_type_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimeTapItem extends StatelessWidget {
  const TimeTapItem({super.key, required this.title, required this.index});
  final String title;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.read<SelectTimeTypeCubit>().changeTimeTypeIndex(index);
      },
      child: Text(title,style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: MediaQuery.of(context).size.height*.018,
        color: context.read<SelectTimeTypeCubit>().currentIndex==index?AppColors.primaryColor:null,
      ),),
    );
  }
}
