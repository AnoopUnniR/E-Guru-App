import 'package:eguru_app/application/authentication_bloc/authentication_bloc.dart';
import 'package:eguru_app/application/chat_bloc/chat_bloc_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/chat_model/chat.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBoxTextInputWidget extends StatelessWidget {
  const ChatBoxTextInputWidget({
    super.key,
    required this.width,
    required this.messageController,
  });

  final double width;
  final TextEditingController messageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width * 100,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                // maxLines: 5,
                style: const TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                controller: messageController,
                decoration: const InputDecoration(
                  hintText: "Enter your message here...",
                  hintStyle: TextStyle(color: Colors.black54),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            sbw5,
            SizedBox(
              height: 60,
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.pink)),
                onPressed: () {
                  final datetime = DateTime.now();
                  if (messageController.text.isEmpty) {
                    return;
                  }
                  BlocProvider.of<ChatBlocBloc>(context).add(
                    Send(
                      // message: SendMessageModel(
                      //   message: messageController.text,
                      //   roomName: roomName,
                      //   senderId: savedUserId,
                      // ),
                      message: Chat(
                        senderId: savedUserId.toString(),
                        senderName: savedUserName,
                        message: messageController.text.trim(),
                        profilePic: savedUserPic,
                        dateTime: datetime.toIso8601String(),
                      ),
                    ),
                  );
                  messageController.clear();
                },
                child: const Text(
                  "Send",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
