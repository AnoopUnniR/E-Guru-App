import 'package:appwrite/appwrite.dart';

const String appwriteDbID = "65092d9d9b9e8fbfaa52";
const String appwriteId = '65091e6dd5a1988f0dc0';
const String appwriteKey =
    "7ee4d9fb10d5790cbf1c9743ad5fd298b99fc1fd4499a3029407c1fa9bcb20008565a8f84a6f6aca76def5705dfc4a5836277533df28b8f3a59554d168d2ca3585d742ae0b7fa03812ee0e6e5ce0be90ed28474b96834f818ee33d9744033fa72bd9a3fbfcc6678994e5227f297abc8b664d079f5e912dc7644da02ff955f5df";

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
