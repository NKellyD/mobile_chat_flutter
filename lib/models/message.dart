import 'package:mobile_chat_flutter/models/user.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;
  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// ME- CURRENT USER

final User currentUser =
    User(id: 0, name: 'Kelly', imageUrl: 'assets/images/Kd.jpeg');

// USERS
final User maman =
    User(id: 1, name: 'Mman.kelly', imageUrl: 'assets/images/Maman.jpeg');

final User kate =
    User(id: 2, name: 'Sister', imageUrl: 'assets/images/Sister.jpeg');

final User amanda =
    User(id: 3, name: 'Amanda', imageUrl: 'assets/images/Amanda.jpeg');

final User jo = User(id: 4, name: 'Jordy', imageUrl: 'assets/images/Jo.jpeg');

final User pawel =
    User(id: 4, name: 'Pawel', imageUrl: 'assets/images/Pawel.jpeg');

final User owen =
    User(id: 5, name: 'Owen', imageUrl: 'assets/images/Owen.jpeg');

final User debs =
    User(id: 6, name: 'Debs', imageUrl: 'assets/images/Debs.jpeg');

// FAVORITE CONTACT
List<User> favorite = [kate, amanda, maman, debs, jo];

//MESSAGE SCREEN HOME

List<Message> chats = [
  Message(
      sender: owen,
      time: '4:20 PM',
      text: 'Bonjour! vous allez bien?',
      isLiked: false,
      unread: true),
  Message(
      sender: amanda,
      time: '3:10 PM',
      text: 'Olla! common estas?',
      isLiked: false,
      unread: true),
  Message(
      sender: kate,
      time: '3:09 PM',
      text: 'Bonjour! pourriez vous m\'appeler?',
      isLiked: true,
      unread: true),

  Message(
      sender: debs,
      time: '2:01 PM',
      text: 'Hello n bn?',
      isLiked: true,
      unread: false),

  Message(
      sender: pawel,
      time: '2:22 PM',
      text: 'Hey! merci pour les chassures?',
      isLiked: true,
      unread: true),

  Message(
      sender: maman,
      time: '0:32 PM',
      text: 'Mwaramutse murakomeye hiyo?',
      isLiked: true,
      unread: false),
];
