part of 'chat_bloc_bloc.dart';

@freezed
class ChatBlocEvent with _$ChatBlocEvent {
  const factory ChatBlocEvent.started({
   required String courseName,
   required int chatId
  }) = _Started;

  const factory ChatBlocEvent.send({
  required Chat message
  })=Send;

    const factory ChatBlocEvent.update()=Update;

}