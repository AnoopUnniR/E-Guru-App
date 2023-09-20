import 'package:eguru_app/application/authentication_bloc/authentication_bloc.dart';
import 'package:eguru_app/application/chat_bloc/chat_bloc_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/core/appwrite/appwrite.dart';
import 'package:eguru_app/domain/models/chat_model/chat.dart';
import 'package:eguru_app/domain/models/chat_model/chat_model.dart';
import 'package:eguru_app/infrastructure/chat/appwrite_chat_repository.dart';
import 'package:eguru_app/infrastructure/chat/appwrite_realtime.dart';
import 'package:eguru_app/presentation/courses_page/chat_page/widgets/chat_bubble.dart';
import 'package:eguru_app/presentation/courses_page/chat_page/widgets/chat_text_input.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatPage extends StatelessWidget {
  final AppwriteRealtime appwriteRealtime = AppwriteRealtime();
  final AppwriteRepository appwriteRepository = AppwriteRepository();
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
          // ChatRepository.connectChatSocket(roomId)
          AppwriteChatRepository(
            client: appwriteRepository.getClient(),
            collectionId: roomId.toString(),
          ),
          appwriteRealtime.getSubcription(
              appwriteRepository.getClient(), roomId),
        )..add(
            ChatBlocEvent.started(
              courseName: roomName,
              chatId: roomId,
            ),
          ),
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              roomName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
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
                await Future.delayed(const Duration(milliseconds: 500));
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
              String name1 = '';
              String date = '';
              if (state.chats.isNotEmpty) {
                DateTime dateTime = DateTime.parse(state.chats[0].dateTime);
                date =
                    "${dateTime.day.toString()}/${dateTime.month.toString()}/${dateTime.year.toString()}";
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
                                Chat chat = state.chats[index];
                                DateTime dateTime =
                                    DateTime.parse(chat.dateTime);
                                String chatDate =
                                    "${dateTime.day.toString()}/${dateTime.month.toString()}/${dateTime.year.toString()}";
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
                                      style: const TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              controller: scrollController,
                              padding: const EdgeInsets.all(5),
                              shrinkWrap: true,
                              itemCount: state.chats.length,
                              itemBuilder: (context, index) {
                                Chat chat = state.chats[index];
                                if (chat.senderName != name1) {
                                  name1 = chat.senderName;
                                  // isSameSender = false;
                                } else {
                                  // isSameSender = true;
                                }
                                bool isSender =
                                    chat.senderId == savedUserId.toString();
                                DateTime dateTime =
                                    DateTime.parse(chat.dateTime);
                                int hour = hourConverter(dateTime.hour);
                                String period = (hour < 12) ? 'AM' : 'PM';
                                String time =
                                    "$hour:${dateTime.minute}:${dateTime.second} $period";
                                return ChatBubble(
                                  isSender: isSender,
                                  chat: chat,
                                  width: width,
                                  time: time,
                                );
                              },
                            ),
                    ),
                    ChatBoxTextInputWidget(
                        width: width, messageController: messageController)
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
