class PeopleModel {
  final String id;
  final String name;
  final String age;
  final String photoUrl;
  final bool isOnline;
  final bool isVip;
  final String lastMessage;
  final DateTime timestamp;
  final int unreadCount;
  final bool isTyping;

  const PeopleModel({
    required this.id,
    required this.name,
    required this.age,
    required this.photoUrl,
    required this.isOnline,
    required this.isVip,
    required this.lastMessage,
    required this.timestamp,
    this.unreadCount = 0,
    this.isTyping = false,
  });
}
