part of 'chat_bloc_bloc.dart';

@freezed
class ChatBlocState with _$ChatBlocState {
  const factory ChatBlocState.started({
    // required List<ChatModel> chats,
    required List<Chat> chats,
    required bool isLoading,
    required bool isError,
  }) = Started;

  factory ChatBlocState.initial() =>
      const ChatBlocState.started(chats: [], isError: false, isLoading: false);

        const factory ChatBlocState.reload({
    required List<Chat> chats,
    required bool isLoading,
    required int num,
  }) = Reload;
}
