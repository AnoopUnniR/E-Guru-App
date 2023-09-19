import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:eguru_app/domain/core/appwrite/appwrite.dart';
import 'package:eguru_app/domain/core/failures/main_failures.dart';
import 'package:eguru_app/domain/models/chat_model/chat.dart';
import 'package:either_dart/either.dart';
import 'package:uuid/uuid.dart';

class AppwriteChatRepository {
  final Client client;
  late final Databases database;
  late final Account account;
  final String collectionId;
  AppwriteChatRepository({required this.client, required this.collectionId}) {
    database = Databases(client);
    account = Account(client);
  
  }

  Future<void> sendMessage(Chat chat) async {
    String uuid = const Uuid().v4();
    try {
      await database.createDocument(
          databaseId: appwriteDbID,
          collectionId: collectionId,
          documentId: uuid,
          data: chat.toJson());
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Either<MainFailures, List<Chat>>> getAllChats() async {
    List<Chat> chats = [];
    try {
      final DocumentList temp = await database.listDocuments(
          databaseId: appwriteDbID, collectionId: collectionId);
      final response = temp.documents;
      for (var elements in response) {
        chats.add(Chat.fromJson(elements.data));
      }
      return Right(chats);
    } on AppwriteException catch (e) {
      if (e.code == 404) {
        return const Right([]);
      }
      return const Left(MainFailures.clientFailures());
    }
  }
}
