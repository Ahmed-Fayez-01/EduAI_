import 'package:eduai_parent/features/news/presentation/views/widgets/news_view_body.dart';
import 'package:flutter/material.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: NewsViewBody(),
    );
  }
}
