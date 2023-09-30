import 'package:dart_appwrite/dart_appwrite.dart';
import 'package:dart_appwrite/models.dart';
import 'package:eguru_app/domain/core/appwrite/server_appwrite.dart';
import 'package:eguru_app/domain/core/auth/keys.dart';

class AppwriteServer {
  final Client client;
  late final Account account;
  late final Databases database;
  late final Storage storage;
  ServerApwrite serverApwrite = ServerApwrite();

  AppwriteServer(this.client) {
    // Client client = serverApwrite.serverAppwrite();
    account = Account(client);
    database = Databases(client);
    storage = Storage(client);
  }

  Future<void> createConversation(
      {required String chatRoomId, required String chatroomName}) async {
    Collection collection;
    try {
      collection = await database.getCollection(
          databaseId: appwriteDbID, collectionId: chatRoomId);
    } on AppwriteException catch (e) {
      if (e.code == 404) {
        try {
          collection = await database.createCollection(
            databaseId: appwriteDbID,
            collectionId: chatRoomId,
            name: chatroomName,
            permissions: [
              Permission.create(Role.any()),
              Permission.update(Role.any()),
              Permission.read(Role.any()),
              Permission.delete(Role.any()),
              Permission.update(Role.any()),
            ],
          );
        } catch (e) {
          throw Exception(e);
        }
      } else {
        throw Exception(e);
      }
    }

    if (collection.attributes.isEmpty) {
      await defineAtributes(collection.$id);
    }
  }

  Future<void> defineAtributes(String id) async {
    try {
      await database.createStringAttribute(
          databaseId: appwriteDbID,
          collectionId: id,
          key: "sender_name",
          size: 255,
          xrequired: true);
      await database.createStringAttribute(
          databaseId: appwriteDbID,
          collectionId: id,
          key: "sender_id",
          size: 255,
          xrequired: true);
      await database.createStringAttribute(
          databaseId: appwriteDbID,
          collectionId: id,
          key: "message",
          size: 255,
          xrequired: true);
      await database.createStringAttribute(
          databaseId: appwriteDbID,
          collectionId: id,
          key: "profile_pic",
          size: 255,
          xrequired: true);
      await database.createDatetimeAttribute(
          databaseId: appwriteDbID,
          collectionId: id,
          key: "date_time",
          xrequired: true);
    } catch (e) {
      throw Exception(e);
    }
  }
}
