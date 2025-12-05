import 'package:dating_app/design/colors.dart';
import 'package:dating_app/design/images.dart';
import 'package:dating_app/models/people_models.dart';
import 'package:flutter/material.dart';

class PeopleItem extends StatelessWidget {
  final PeopleModel person;

  const PeopleItem({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: _hasImage() ? null : secondaryVariantColor,
                  image: _hasImage()
                      ? DecorationImage(
                          image: _getImageProvider(),
                          fit: BoxFit.cover,
                        )
                      : null,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(128),
                    topRight: Radius.circular(128),
                    bottomRight: Radius.circular(128),
                    bottomLeft: Radius.circular(2),
                  ),
                ),
                child: _hasImage()
                    ? null
                    : Center(
                        child: Text(
                          _getInitials(person.name),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Nunito',
                          ),
                        ),
                      ),
              ),
              // Индикатор онлайн статуса
              if (person.isOnline)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: <Widget>[
                    if (person.isVip)
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: crownImage,
                      ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 110,
                      ),
                      child: Text(
                        person.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Container(
                      width: 1,
                      height: 12,
                      color: messageColor,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      person.age,
                      style: const TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    if (person.isVip)
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: medalImage,
                      ),
                  ],
                ),
                const SizedBox(height: 4),
                if (person.isTyping)
                  const Text(
                    'Пишет...',
                    style: TextStyle(
                      fontSize: 12,
                      color: messageColor,
                      fontFamily: 'Inter',
                    ),
                  )
                else
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 200,
                    ),
                    child: Text(
                      person.lastMessage,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 12,
                        color: messageColor,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                person.timestamp,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: messageColor,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              if (person.unreadCount > 0)
                Container(
                  width: 18,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6.5, vertical: 3),
                  decoration: const BoxDecoration(
                    color: redColor,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    person.unreadCount.toString(),
                    style: const TextStyle(
                      color: primaryColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  // Проверяет, есть ли изображение
  bool _hasImage() {
    return person.localImagePath != null && person.localImagePath!.isNotEmpty ||
        person.photoUrl.isNotEmpty;
  }

  // Возвращает провайдер изображения
  ImageProvider _getImageProvider() {
    if (person.localImagePath != null && person.localImagePath!.isNotEmpty) {
      return AssetImage(person.localImagePath!);
    } else {
      return NetworkImage(person.photoUrl);
    }
  }

  // Получает инициалы из имени
  String _getInitials(String name) {
    if (name.isEmpty) return '?';

    final parts = name.split(' ');
    if (parts.length == 1) {
      return parts[0].isNotEmpty ? parts[0][0].toUpperCase() : '?';
    } else {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    }
  }
}
