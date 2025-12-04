import 'package:dating_app/models/people_models.dart';
import 'package:dating_app/pages/chat/chat_item.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/design/colors.dart';
import 'package:dating_app/design/images.dart';

class ChatScreen extends StatelessWidget {
  // Список людей
  final List<PeopleModel> people = [
    const PeopleModel(
      id: '1',
      name: 'Маша',
      age: '25',
      photoUrl: '',
      isOnline: true,
      isVip: true,
      lastMessage: 'Привет! Как дела?',
      timestamp: '5мин.',
      unreadCount: 1,
      isTyping: true,
    ),
    const PeopleModel(
      id: '2',
      name: 'Маша',
      age: '25',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      localImagePath: 'assets/images/woman1.png',
      isOnline: true,
      isVip: true,
      lastMessage: 'Пойдем гулять',
      timestamp: '5мин.',
      unreadCount: 1,
      isTyping: false,
    ),
    const PeopleModel(
      id: '3',
      name: 'Егор Крид',
      age: '25',
      photoUrl:
          'https://i.pinimg.com/736x/fb/47/57/fb4757a069b5d4649f3402da60f7b4a4.jpg',
      isOnline: true,
      isVip: true,
      lastMessage: 'Она отказала мне, сказала, что любит тебя!',
      timestamp: '5 мин.',
      unreadCount: 1,
      isTyping: false,
    ),
    const PeopleModel(
      id: '4',
      name: 'Ирина',
      age: '25',
      photoUrl: '',
      isOnline: true,
      isVip: false,
      lastMessage: 'Пойдем гулять',
      timestamp: '5 мин.',
      unreadCount: 1,
      isTyping: false,
    ),
    const PeopleModel(
      id: '4',
      name: 'Маша',
      age: '25',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      localImagePath: 'assets/images/woman5.png',
      isOnline: true,
      isVip: true,
      lastMessage: 'Привет! Как дела?',
      timestamp: '5 мин.',
      unreadCount: 1,
      isTyping: false,
    ),
    const PeopleModel(
      id: '4',
      name: 'Маша',
      age: '25',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      isOnline: false,
      localImagePath: 'assets/images/woman2.png',
      isVip: true,
      lastMessage: 'Привет! Как дела?',
      timestamp: '5 мин.',
      unreadCount: 5,
      isTyping: false,
    ),
    const PeopleModel(
      id: '4',
      name: 'Маша',
      age: '25',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      localImagePath: 'assets/images/woman3.png',
      isOnline: false,
      isVip: true,
      lastMessage: 'Привет! Как дела?',
      timestamp: '5 мин.',
      unreadCount: 1,
      isTyping: false,
    ),
    const PeopleModel(
      id: '4',
      name: 'Маша',
      age: '25',
      photoUrl:
          'https://i.pinimg.com/736x/b1/e1/97/b1e197615b913f5d61323652ae1a59fd.jpg',
      isOnline: false,
      isVip: true,
      lastMessage: 'Привет! Как дела?',
      timestamp: '5 мин.',
      unreadCount: 1,
      isTyping: false,
    ),
    const PeopleModel(
      id: '4',
      name: 'Маша',
      age: '25',
      photoUrl:
          'https://i.pinimg.com/736x/d5/9f/50/d59f502c9fa01ff7321c0b67a27d8f9f.jpg',
      localImagePath: 'assets/images/woman4.png',
      isOnline: false,
      isVip: true,
      lastMessage: 'Привет! Как дела?',
      timestamp: '5 мин.',
      unreadCount: 1,
      isTyping: false,
    ),
    const PeopleModel(
      id: '4',
      name: 'Дмитрий Нагиев',
      age: '25',
      photoUrl:
          'https://i.pinimg.com/736x/81/ab/f2/81abf2419a99a5762a6f41a7ae7594e9.jpg',
      isOnline: false,
      isVip: true,
      lastMessage:
          'Без любви жить можно.. когда не знаешь что это такое.. если узнал - уже нельзя',
      timestamp: '5 мин.',
      unreadCount: 0,
      isTyping: false,
    ),
    const PeopleModel(
      id: '4',
      name: 'Андрей',
      age: '25',
      photoUrl:
          'https://i.pinimg.com/1200x/26/82/ec/2682ec51cdd0f28a03c56d8d0a55119d.jpg',
      isOnline: false,
      isVip: true,
      lastMessage: 'Люблю романтику',
      timestamp: '5 мин.',
      unreadCount: 0,
      isTyping: false,
    ),
    const PeopleModel(
      id: '4',
      name: 'Умный человек в очках',
      age: '25',
      photoUrl:
          'https://i.pinimg.com/1200x/ec/2f/15/ec2f153e7f2f8c78920619d7f8406e35.jpg',
      isOnline: false,
      isVip: true,
      lastMessage: 'Люблю романтику',
      timestamp: '5 мин.',
      unreadCount: 0,
      isTyping: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: primaryColor,
        appBar: AppBar(
          backgroundColor: primaryColor,
          centerTitle: true,
          leading: Container(
            alignment: Alignment.center,
            child: penImage,
          ),
          actions: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 23, vertical: 15),
                child: glassImage)
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0),
            child: Container(
              color: secondaryColor,
              height: 2.0,
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
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(243, 242, 249, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(2),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 32,
                      decoration: BoxDecoration(
                        color: secondaryVariantColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(2),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Все',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 32,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(243, 242, 249, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(2),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Онлайн',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              // color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 32,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(243, 242, 249, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(2),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Сохраненные',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              // color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return PeopleItem(person: people[index]);
                },
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white.withOpacity(0.9),
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('Vector1.png') 
            ),
            BottomNavigationBarItem(
              
              icon: Image.asset('Vector1.png') 
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.person),
            //   label: 'Профиль',
            // ),
          ],
        ));
  }
}
