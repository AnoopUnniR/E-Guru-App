import 'package:jwt_decoder/jwt_decoder.dart';

//converts the jwt token and extracts the id from the keyvalue pair into int
class TokenDecoder {
  static int getUserIdFromToken(String token){
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    if (decodedToken.containsKey('user_id')) {
      return int.parse(decodedToken['user_id'].toString());
    }
    throw Exception("error occured while decoding");
  }
}
