

import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/chat_model/chat.dart';

import 'package:flutter/material.dart';


class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.isSender,
    required this.chat,
    required this.width,
    required this.time,
  });

  final bool isSender;
  final Chat chat;
  final double width;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!isSender)
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrlConvert(chat.profilePic)),
          ),
        if (isSender)
          SizedBox(
            width: width * 15,
          ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              color: isSender ? Colors.blue : Colors.grey.shade300,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Column(
              crossAxisAlignment:
                  isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                if (!isSender)
                  Text(
                    chat.senderName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isSender ? Colors.white : Colors.black,
                    ),
                  ),
                Text(
                  chat.message,
                  style: TextStyle(
                    fontSize: 20,
                    color: isSender ? Colors.white : Colors.black,
                  ),
                ),
                Text(
                  time,
                  style: TextStyle(
                    color: isSender ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (!isSender)
          SizedBox(
            width: width * 15,
          ),
      ],
    );
  }
}
