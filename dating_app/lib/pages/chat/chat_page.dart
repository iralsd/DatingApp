import 'package:dating_app/design/colors.dart';
import 'package:dating_app/design/images.dart';
import 'package:dating_app/pages/chat/chat_list.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: surfaceColor,
        centerTitle: true,
        leading: Container(
          alignment: Alignment.center,
          child: penImage,
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 15),
              child: glassImage)
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0), // Высота полоски
          child: Container(
            color: secondaryColor, // Цвет полоски
            height: 3.0, // Толщина полоски
          ),
        ),
        title: const Text('Сообщения',
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.w800,
              fontFamily: 'Nunito',
            )),
      ),
      body: Container(color: surfaceColor, child: ChatScreen()),
    );
  }
}
