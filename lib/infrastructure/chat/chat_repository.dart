// import 'package:dio/dio.dart';
// import 'package:eguru_app/domain/api_endpoints.dart';
// import 'package:eguru_app/domain/core/failures/main_failures.dart';
// import 'package:eguru_app/domain/models/chat_model/chat_model.dart';
// import 'package:either_dart/either.dart';
// import 'package:web_socket_channel/io.dart';
// import 'package:web_socket_channel/web_socket_channel.dart';



// ------WHEN USING WEBSOCKET

// class ChatRepository {
//   final Dio dio = Dio();

//   static WebSocketChannel connectChatSocket(int roomID) {
//     final url = 'wss://$websocketUrl/ws/chat/$roomID/';
//     return WebSocketChannel.connect(Uri.parse(url));
//   }

//   Future<Either<MainFailures, List<ChatModel>>> getAllChats(
//     String courseName,
//   ) async {
//     final response = await dio.get(Url.getAllChatsByName + courseName);
//     if (response.statusCode == 200) {
//       if (response.data["success"]) {
//         List<ChatModel> chat = (response.data["messages"] as List)
//             .map((e) => ChatModel.fromJson(e))
//             .toList();
//         return Right(chat);
//       }
//       return const Left(MainFailures.clientFailures());
//     }
//     return const Left(MainFailures.clientFailures());
//   }
// }




