import 'package:appwrite/appwrite.dart';
import 'package:eguru_app/domain/core/auth/keys.dart';

class AppwriteRealtime {
  RealtimeSubscription getSubcription(Client client, int collectionId) {
    final Realtime realtime;
    realtime = Realtime(client);
    final real = realtime.subscribe(['databases.$appwriteDbID.collections.$collectionId.documents']);
    return real;
  }
}
