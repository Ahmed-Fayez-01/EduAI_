import 'package:eduai_parent/features/chat/presentation/views/widgets/chat_conversation_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatConversationView extends StatelessWidget {
  const ChatConversationView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0.0), // here the desired height
        child: AppBar(
          elevation: 0,
          systemOverlayStyle:  const SystemUiOverlayStyle(
            statusBarColor:Color(0xffF9F9F9),
            statusBarIconBrightness:Brightness.dark,
            systemNavigationBarColor: Colors.white,
            statusBarBrightness:Brightness.light,
          ),
        ),
      ),
      body: const ChatConversationViewBody(),
    );
  }
}
