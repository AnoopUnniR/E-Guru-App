class Chat {
  final String senderId;
  final String senderName;
  final String message;
  final String profilePic;
  final String dateTime;
  Chat(
      {required this.senderId,
      required this.senderName,
      required this.message,
      required this.profilePic,
      required this.dateTime});

  factory Chat.fromJson(Map<String, dynamic> json) => Chat(
      senderId: json["sender_id"],
      senderName: json["sender_name"],
      message: json["message"],
      profilePic: json["profile_pic"],
      dateTime: json["date_time"]);

  Map<String, dynamic> toJson() => {
        "sender_id": senderId,
        "sender_name": senderName,
        "message": message,
        "profile_pic": profilePic,
        "date_time":dateTime
      };
}
