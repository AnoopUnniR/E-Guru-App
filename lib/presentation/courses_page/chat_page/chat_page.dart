import 'package:eguru_app/application/authentication_bloc/authentication_bloc.dart';
import 'package:eguru_app/application/chat_bloc/chat_bloc_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/chat_model/chat_model.dart';
import 'package:eguru_app/domain/models/chat_model/send_model.dart';

import 'package:eguru_app/infrastructure/chat/chat_repository.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatPage extends StatelessWidget {
  ChatPage({
    super.key,
    required this.roomId,
    required this.roomName,
  });
  final int roomId;
  final String roomName;
  final ScrollController scrollController = ScrollController();
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    return Container(
      decoration: scaffoldBackgroundDecoration(),
      child: BlocProvider(
        create: (context) => ChatBlocBloc(
            ChatRepository.connectChatSocket(roomId))
          ..add(ChatBlocEvent.started(courseName: roomName, chatId: roomId)),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                Navigator.pop(context);
              },
            ),
          ),
          body: BlocConsumer<ChatBlocBloc, ChatBlocState>(
            listener: (context, state) async {
              if (state.chats.isEmpty) return;
              if (state is Started || state is Reload) {
                if (state is Started) {
                  await Future.delayed(const Duration(milliseconds: 500));
                }
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  scrollController.animateTo(
                      scrollController.position.maxScrollExtent,
                      duration: const Duration(microseconds: 1000),
                      curve: Curves.easeIn);
                });
              }
              if (state is Reload) {
                // await Future.delayed(const Duration(milliseconds: 500));

                scrollController.animateTo(
                    scrollController.position.maxScrollExtent,
                    duration: const Duration(microseconds: 1000),
                    curve: Curves.easeIn);
              }
            },
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              // if (state.chats.isEmpty) {
              //   return const Center(
              //     child: Text(
              //       "no chats yet",
              //       style: TextStyle(color: Colors.black),
              //     ),
              //   );
              // }
              String name1 = '';
              String date = '';
              if (state.chats.isNotEmpty) {
                date =
                    "${state.chats[0].time.day.toString()}/${state.chats[0].time.month.toString()}/${state.chats[0].time.year.toString()}";
              }
              // bool isSameSender = false;
              return SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      child: state.chats.isEmpty
                          ? const Center(
                              child: Text(
                                "no chats yet",
                                style: TextStyle(color: Colors.black),
                              ),
                            )
                          : ListView.separated(
                              separatorBuilder: (context, index) {
                                ChatModel chat = state.chats[index];
                                String chatDate =
                                    "${chat.time.day.toString()}/${chat.time.month.toString()}/${chat.time.year.toString()}";
                                if (date == chatDate) {
                                  return const SizedBox();
                                }
                                date = chatDate;
                                return SizedBox(
                                  height: 20,
                                  width: width * 100,
                                  child: Center(
                                      child: Text(
                                    date,
                                    style: const TextStyle(color: Colors.black),
                                  )),
                                );
                              },
                              controller: scrollController,
                              padding: const EdgeInsets.all(5),
                              shrinkWrap: true,
                              itemCount: state.chats.length,
                              itemBuilder: (context, index) {
                                ChatModel chat = state.chats[index];
                                if (chat.sender.name != name1) {
                                  name1 = chat.sender.name;
                                  // isSameSender = false;
                                } else {
                                  // isSameSender = true;
                                }
                                bool isSender = chat.sender.id == savedUserId;
                                DateTime dateTime =
                                    DateTime.parse(chat.time.toString())
                                        .toLocal();
                                int hour = dateTime.hour;
                                String period = (hour < 12) ? 'AM' : 'PM';
                                if (hour > 12) {
                                  hour -= 12;
                                }
                                if (hour == 0) {
                                  hour = 12;
                                }
                                String time =
                                    "$hour:${dateTime.minute}:${dateTime.second} $period";
                                return Row(
                                  mainAxisAlignment: isSender
                                      ? MainAxisAlignment.end
                                      : MainAxisAlignment.start,
                                  children: [
                                    if (!isSender)
                                      CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            imageUrlConvert(chat.sender.image)),
                                      ),
                                    if (isSender)
                                      SizedBox(
                                        width: width * 15,
                                      ),
                                    Flexible(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: isSender
                                              ? Colors.blue
                                              : Colors.grey.shade300,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(8)),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 16),
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 8),
                                        child: Column(
                                          crossAxisAlignment: isSender
                                              ? CrossAxisAlignment.end
                                              : CrossAxisAlignment.start,
                                          children: [
                                            if (!isSender)
                                              Text(
                                                chat.sender.name,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: isSender
                                                      ? Colors.white
                                                      : Colors.black,
                                                ),
                                              ),
                                            Text(
                                              chat.message,
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: isSender
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                            Text(
                                              time,
                                              style: TextStyle(
                                                color: isSender
                                                    ? Colors.white
                                                    : Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // if (isSender)
                                    //   CircleAvatar(
                                    //     backgroundImage: NetworkImage(
                                    //         imageUrlConvert(chat.sender.image)),
                                    //   ),
                                    if (!isSender)
                                      SizedBox(
                                        width: width * 15,
                                      ),
                                  ],
                                );
                              },
                            ),
                    ),
                    Card(
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
                                onPressed: () {
                                  if (messageController.text.isEmpty) {
                                    return;
                                  }
                                  BlocProvider.of<ChatBlocBloc>(context).add(
                                    Send(
                                      message: SendMessageModel(
                                        message: messageController.text,
                                        roomName: roomName,
                                        senderId: savedUserId,
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
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Padding chatImageWidget(ChatModel chat) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(
          imageUrlConvert(chat.sender.image),
        ),
      ),
    );
  }

  Widget messageText(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20),
    );
  }
}
