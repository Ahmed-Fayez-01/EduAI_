import 'package:eduai_parent/features/grades/presentation/views/widgets/grades_view_body.dart';
import 'package:flutter/material.dart';

class GradesView extends StatelessWidget {
  const GradesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: GradesViewBody(),
    );
  }
}
