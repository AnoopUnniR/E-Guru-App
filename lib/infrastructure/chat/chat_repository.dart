import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:eguru_app/domain/core/failures/main_failures.dart';
import 'package:eguru_app/domain/models/chat_model/chat_model.dart';
import 'package:either_dart/either.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ChatRepository {
  final Dio dio = Dio();

  static WebSocketChannel connectChatSocket(int roomID) {
    final url = 'wss://$websocketUrl/ws/chat/$roomID/';
    return WebSocketChannel.connect(Uri.parse(url));
  }

  Future<Either<MainFailures, List<ChatModel>>> getAllChats(
    String courseName,
  ) async {
    final response = await dio.get(Url.getAllChatsByName + courseName);
    if (response.statusCode == 200) {
      if (response.data["success"]) {
        List<ChatModel> chat = (response.data["messages"] as List)
            .map((e) => ChatModel.fromJson(e))
            .toList();
        return Right(chat);
      }
      return const Left(MainFailures.clientFailures());
    }
    return const Left(MainFailures.clientFailures());
  }
}

val() async {
  final channel = IOWebSocketChannel.connect(
      Uri.parse('wss://egurubackend.online:443/ws/chat/1/'));

  channel.stream.listen(
    (message) {
      // Handle incoming messages
      print('Received: $message');
    },
    onError: (error) {
      // Handle WebSocket errors
      print('WebSocket Error: $error');
    },
    onDone: () {
      // WebSocket connection closed
      print('WebSocket Closed');
    },
  );
}
