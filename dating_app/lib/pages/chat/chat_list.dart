import 'package:dating_app/models/people_models.dart';
import 'package:dating_app/pages/chat/chat_item.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  // Список людей
  final List<PeopleModel> people = [
    PeopleModel(
      id: '1',
      name: 'Антон',
      age: '25',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: true,
      isVip: true,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now(),
      unreadCount: 3,
      isTyping: false,
    ),
    PeopleModel(
      id: '2',
      name: 'Максим',
      age: '30',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Договорились на завтра',
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      unreadCount: 0,
      isTyping: false,
    ),
    PeopleModel(
      id: '3',
      name: 'Вадим',
      age: '28',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: true,
      isVip: true,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 1)),
      unreadCount: 1,
      isTyping: true,
    ),
    PeopleModel(
      id: '4',
      name: 'Дмитрий',
      age: '35',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      unreadCount: 0,
      isTyping: false,
    ),
    PeopleModel(
      id: '4',
      name: 'Дмитрий',
      age: '35',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      unreadCount: 0,
      isTyping: false,
    ),
    PeopleModel(
      id: '4',
      name: 'Дмитрий',
      age: '35',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      unreadCount: 0,
      isTyping: false,
    ),
    PeopleModel(
      id: '4',
      name: 'Дмитрий',
      age: '35',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      unreadCount: 0,
      isTyping: false,
    ),
    PeopleModel(
      id: '4',
      name: 'Дмитрий',
      age: '35',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      unreadCount: 0,
      isTyping: false,
    ),
    PeopleModel(
      id: '4',
      name: 'Дмитрий',
      age: '35',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      unreadCount: 0,
      isTyping: false,
    ),
    PeopleModel(
      id: '4',
      name: 'Дмитрий',
      age: '35',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      unreadCount: 0,
      isTyping: false,
    ),
    PeopleModel(
      id: '4',
      name: 'Дмитрий',
      age: '35',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      isVip: false,
      lastMessage: 'Привет! Как дела?',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      unreadCount: 0,
      isTyping: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Чаты')),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          return PeopleItem(person: people[index]);
        },
      ),
    );
  }
}
