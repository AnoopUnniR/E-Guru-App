class ChatModel {
  final int id;
  final int room;
  final Sender sender;
  final String message;
  final DateTime time;

  ChatModel({
    required this.id,
    required this.room,
    required this.sender,
    required this.message,
    required this.time,
  });

  factory ChatModel.fromJson(Map<String, dynamic> json) {
    return ChatModel(
      id: json['id'],
      room: json['room'],
      sender: Sender.fromJson(json['sender']),
      message: json['message'],
      time: DateTime.parse(json['time']),
    );
  }
}

class Sender {
  final int id;
  final String image;
  final String name;
  final String email;

  Sender({
    required this.id,
    required this.image,
    required this.name,
    required this.email,
  });

  factory Sender.fromJson(Map<String, dynamic> json) {
    return Sender(
      id: json['id'],
      image: json['image'],
      name: json['name'],
      email: json['email'],
  
    );
  }
}
