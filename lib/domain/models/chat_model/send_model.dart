class SendMessageModel {
  final String roomName;
  final int senderId;
  final String message;

  SendMessageModel(
      {required this.roomName, required this.senderId, required this.message});

  Map<String, dynamic> toJson() =>
      {"room_name": roomName, "sender_id": senderId, "message": message};
}
