import 'package:appwrite/appwrite.dart';
import 'package:eguru_app/domain/core/auth/keys.dart';
class AppwriteRepository {
  Client client = Client();
  Client getClient() {
    client
        .setEndpoint('https://cloud.appwrite.io/v1')
        .setProject(appwriteId)
        .setSelfSigned();
    return client;
  }
}
