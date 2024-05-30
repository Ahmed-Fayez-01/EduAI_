import 'package:eduai_parent/features/fees/presentation/views/widgets/fees_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FeesView extends StatelessWidget {
  const FeesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0.0), // here the desired height
        child: AppBar(
          elevation: 0,
          systemOverlayStyle:  const SystemUiOverlayStyle(
            statusBarColor:Colors.white,
            statusBarIconBrightness:Brightness.dark,
            systemNavigationBarColor: Colors.white,
            statusBarBrightness:Brightness.light,
          ),
        ),
      ),
      body: const FeesViewBody(),
    );
  }
}
