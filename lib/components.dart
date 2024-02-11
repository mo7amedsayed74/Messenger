import 'package:flutter/material.dart';
import 'package:messenger_screen/user_model.dart';

final List<UserModel> items = [
  UserModel(
    name: 'Ronaldo',
    message: 'Hello, I\'m your favorite player, I\'m Ronaldo',
    time: '12:00 am',
  ),
  UserModel(
    name: 'Mohamed Sayed Taha',
    message: '3andko shampooooo??!!!',
    time: '10:00 pm',
  ),
  UserModel(
    name: 'Abdullah Mansour Abdullah Mansour Abdullah Mansour',
    message: 'call me now!',
    time: '8:45 am',
  ),
  UserModel(
    name: 'ElGoker',
    message: 'اني اقدر اوصل ساي مثلا عشر جمل ف جمله واحده',
    time: '12:00 am',
  ),
  UserModel(
    name: '3bas eldaoy',
    message: '3bas eldaoy by2ol l2aaaaaa',
    time: '5:10 am',
  ),
  UserModel(
    name: 'Ronaldo',
    message: 'Hello, I\'m your favorite player, I\'m Ronaldo',
    time: '12:00 am',
  ),
  UserModel(
    name: 'Mohamed Sayed Taha',
    message: '#andko shampooooo??!!!',
    time: '10:00 pm',
  ),
  UserModel(
    name: 'Abdullah Mansour Abdullah Mansour Abdullah Mansour',
    message: 'call me now!',
    time: '8:45 am',
  ),
  UserModel(
    name: 'ElGoker',
    message: 'اني اقدلر اوصل ساي مثلا عشر جمل ف جمله واحده',
    time: '12:00 am',
  ),
  UserModel(
    name: '3bas eldaoy',
    message: '3bas eldaoy by2ol l2aaaaaa',
    time: '5:10 am',
  ),
];


Widget buildStoryItem() => const SizedBox(
  width: 80,
  height: 120,
  child: Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/114395937?s=400&u=f90a33c91bc00a3cad4ec25457079af2463f5154&v=4'),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 5,
              end: 5,
            ),
            child: CircleAvatar(
              radius: 6,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 6,
      ),
      Text(
        'Abdullah Mansour Abdullah Mansour',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    ],
  ),
);

Widget buildChatItem(UserModel item) => Row(
  children: [
    const Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/114395937?s=400&u=f90a33c91bc00a3cad4ec25457079af2463f5154&v=4'),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(
            bottom: 5,
            end: 5,
          ),
          child: CircleAvatar(
            radius: 6,
            backgroundColor: Colors.green,
          ),
        ),
      ],
    ),
    const SizedBox(
      width: 10,
    ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${item.name}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  '${item.message}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Container(
                  width: 5,
                  height: 5,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Text(
                '${item.time}',
              ),
            ],
          ),
        ],
      ),
    ),
  ],
);