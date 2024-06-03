import 'package:eduai_parent/features/bus/presentation/views/widgets/bus_view_body.dart';
import 'package:flutter/material.dart';

class BusView extends StatelessWidget {
  const BusView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: BusViewBody(),
    );
  }
}
