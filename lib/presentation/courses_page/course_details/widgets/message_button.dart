import 'package:eguru_app/presentation/courses_page/chat_page/chat_page.dart';

import 'package:flutter/material.dart';

class ChatButtonWidget extends StatelessWidget {
  const ChatButtonWidget(
      {super.key,
      required this.isVisible,
      required this.courseName,
      required this.chatId});
  final bool isVisible;
  final String courseName;
  final int chatId;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Visibility(
        visible: isVisible,
        child: IconButton(
            padding: const EdgeInsets.only(right: 5),
            onPressed: () {
              
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  ChatPage(roomId: chatId,roomName: courseName),
                ),
              );
            },
            icon: const Icon(
              Icons.message_outlined,
              color: Colors.white,
              size: 40,
            )),
      ),
    );
  }
}
