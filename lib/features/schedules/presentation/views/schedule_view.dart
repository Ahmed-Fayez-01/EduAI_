import 'package:eduai_parent/features/schedules/presentation/views/widgets/schedule_view_body.dart';
import 'package:flutter/material.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: ScheduleViewBody(),
    );
  }
}
