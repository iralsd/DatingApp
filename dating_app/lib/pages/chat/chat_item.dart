import 'package:dating_app/design/colors.dart';
import 'package:dating_app/design/images.dart';
import 'package:dating_app/models/people_models.dart';
import 'package:flutter/material.dart';

class PeopleItem extends StatelessWidget {
  final PeopleModel person;

  const PeopleItem({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(person.photoUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(128),
                      topRight: Radius.circular(128),
                      bottomRight: Radius.circular(128),
                      bottomLeft: Radius.circular(2)),
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
                  children: [
                    if (person.isVip)
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: crownImage,
                      ),
                    Text(
                      person.name,
                      style: const TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      person.age,
                      style: const TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16,
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
                  Text(
                    'Печатает...',
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).primaryColor,
                      fontFamily: 'Nunito',
                    ),
                  )
                else
                  Text(
                    person.lastMessage,
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 12,
                      color: messageColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                _formatTime(person.timestamp),
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  color: messageColor,
                ),
              ),
              const SizedBox(height: 8),
              if (person.unreadCount > 0)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    person.unreadCount.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  String _formatTime(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inDays == 0) {
      return '${timestamp.hour.toString().padLeft(2, '0')}:${timestamp.minute.toString().padLeft(2, '0')}';
    } else if (difference.inDays == 1) {
      return 'Вчера';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}д';
    } else {
      return '${timestamp.day.toString().padLeft(2, '0')}.${timestamp.month.toString().padLeft(2, '0')}';
    }
  }
}
