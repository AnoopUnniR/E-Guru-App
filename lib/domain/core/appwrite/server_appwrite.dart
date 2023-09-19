import 'package:dart_appwrite/dart_appwrite.dart' as appwrite;
import 'package:eguru_app/domain/core/appwrite/appwrite.dart';

class ServerApwrite{
 serverAppwriteGetClent() {
  return appwrite.Client()
      .setEndpoint("https://cloud.appwrite.io/v1")
      .setProject(appwriteId)
      .setKey(appwriteKey)
      .setSelfSigned(status: true);
}
}