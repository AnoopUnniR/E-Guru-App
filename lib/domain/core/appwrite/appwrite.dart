import 'package:appwrite/appwrite.dart';

const String appwriteDbID = "650a886569bde420202b";
const String appwriteId = '650a880b05740ce03218';
const String appwriteKey =
    "a935289bb040cd4743a02d7b1043bf5f75b2494a99246402e3e2e4258cd4733b728df2d70a798de945d3a247c75dda4c59dd8eb8c78c9678fba1772dd7b2a0688de2437fb613ec1c2a766b1a7c00450e91a1ad3484c015f99b0ffd23be548bee678b9bc666c3257c812cc8957ad194241c27d0d8aa019da89668b7b6456212d8";

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
