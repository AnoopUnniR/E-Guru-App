import 'dart:convert';

import 'package:eguru_app/domain/models/chat_model/chat_model.dart';
import 'package:eguru_app/domain/models/chat_model/send_model.dart';
import 'package:eguru_app/infrastructure/chat/chat_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/io.dart';

part 'chat_bloc_event.dart';
part 'chat_bloc_state.dart';
part 'chat_bloc_bloc.freezed.dart';

class ChatBlocBloc extends Bloc<ChatBlocEvent, ChatBlocState> {
  ChatRepository chatRepository = ChatRepository();

  final WebSocketChannel channel;

  List<ChatModel> chats = [];
  ChatBlocBloc(this.channel) : super(ChatBlocState.initial()) {
    channel.stream.listen((event) {
      Map<String, dynamic> eventData =
          json.decode(event); // Parse JSON string into map
      chats.add(ChatModel.fromJson(eventData["message"]));
      add(const Update());
    });


    on<_Started>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final response = await chatRepository.getAllChats(event.courseName);
      final states =
          response.fold((left) => state.copyWith(isError: true), (right) {
        chats.addAll(right);
        return state.copyWith(
          chats: right,
          isLoading: false,
        );
      });
      emit(states);
    });

    on<Send>((event, emit) async {
      channel.sink.add(json.encode(event.message.toJson()));
    });
    on<Update>((event, emit) {
      emit(Reload(chats: chats, isLoading: false, isError: false));
    });
  }
}
