import 'package:appwrite/appwrite.dart';
import 'package:eguru_app/domain/models/chat_model/chat.dart';
import 'package:eguru_app/infrastructure/chat/appwrite_chat_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_bloc_event.dart';
part 'chat_bloc_state.dart';
part 'chat_bloc_bloc.freezed.dart';

class ChatBlocBloc extends Bloc<ChatBlocEvent, ChatBlocState> {
  AppwriteChatRepository appwriteChatRepository;
  late RealtimeSubscription subscription;
  // List<ChatModel> chats = [];
  List<Chat> chats = [];

  ChatBlocBloc(this.appwriteChatRepository, this.subscription)
      : super(ChatBlocState.initial()) {
    subscription.stream.listen((chat) {
      Chat data = Chat.fromJson(chat.payload);
      chats.add(data);
      add(const Update());
    });

    on<_Started>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final response = await appwriteChatRepository.getAllChats();
      final states = response.fold((left) {
        return state.copyWith();
      }, (right) {
        chats.addAll(right);
        return state.copyWith(
          chats: right,
          isLoading: false,
        );
      });
      emit(states);
    });
    on<Send>((event, emit) async {
      await appwriteChatRepository.sendMessage(event.message);
    });
    on<Update>((event, emit) {
      emit(Reload(chats: chats, isLoading: false, num: chats.length));
    });


    //----[when using websocket]-------
    //
    // channel.stream.listen((event) {
    //   Map<String, dynamic> eventData =
    //       json.decode(event); // Parse JSON string into map
    //   chats.add(ChatModel.fromJson(eventData["message"]));
    //   add(const Update());
    // });

    // on<_Started>((event, emit) async {
    //   emit(state.copyWith(isLoading: true));
    //   final response = await chatRepository.getAllChats(event.courseName);
    //   final states =
    //       response.fold((left) => state.copyWith(isError: true), (right) {
    //     chats.addAll(right);
    //     return state.copyWith(
    //       chats: right,
    //       isLoading: false,
    //     );
    //   });
    //   emit(states);
    // });

    // on<Send>((event, emit) async {
    //   channel.sink.add(json.encode(event.message.toJson()));
    // });
    // on<Update>((event, emit) {
    //   emit(Reload(chats: chats, isLoading: false, isError: false));
    // });
  }
}
