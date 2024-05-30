import 'package:eduai_parent/features/chat/presentation/views/chat_view.dart';
import 'package:eduai_parent/features/home/presentation/views/home_view.dart';
import 'package:eduai_parent/features/main_layout/presentation/views/widgets/bottom_nav_bar.dart';
import 'package:eduai_parent/features/news/presentation/views/news_view.dart';
import 'package:eduai_parent/features/reports/presentation/views/report_view.dart';
import 'package:eduai_parent/features/son_profile/presentation/views/son_profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared_widgets/exit_alert.dart';
import '../../../schedules/presentation/views/schedule_view.dart';
import '../view_model/change_nav_bar_status/change_nav_bar_status_cubit.dart';

class MainLayoutView extends StatelessWidget {
  MainLayoutView({super.key});

  List<Widget> screens = [
   const HomeView(),
   const ScheduleView(),
    const SonProfileView(),
   const SizedBox(),
   const SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    var cubit = ChangeNavBarStatusCubit.get(context);
    return WillPopScope(
      onWillPop: () async {
        exitDialog(context);
        return true;
      },
      child: BlocBuilder<ChangeNavBarStatusCubit, ChangeNavBarStatusState>(builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(0.0), // here the desired height
              child: AppBar(
                elevation: 0,
                systemOverlayStyle:  SystemUiOverlayStyle(
                  statusBarColor:cubit.currentIndex!=0? const Color(0xffF9F9F9):Colors.white,
                  statusBarIconBrightness:Brightness.dark,
                  systemNavigationBarColor: Colors.white,
                  statusBarBrightness:Brightness.light,
                ),
              ),
          ),
          body: Column(
            children: [
              Expanded(child:screens[cubit.currentIndex]),
              const BottomNavBar(),
            ],
          ),
        );
      }),
    );
    // bottomNavigationBar: const ,
  }
}
