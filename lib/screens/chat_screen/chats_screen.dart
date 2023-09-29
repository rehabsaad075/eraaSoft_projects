import 'package:flutter/material.dart';

import '../../componets/chat_componets/chat_item.dart';
import '../../componets/chat_componets/chat_srory_item.dart';
import '../../models/chat_model.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);
final List< ChatModel> chats=const[
  ChatModel(
      firstName:'Karem',
    lastName: 'Karem Ahmed',
    chat: 'Welcome to flutter',
    isOnline: true,
  ),
  ChatModel(
      firstName:'Omar',
      lastName: 'Omar Ahmed',
      chat: 'Welcome to Anything',
      isOnline: false,
  ),
  ChatModel(
      firstName:'Islam',
      lastName: 'Islam Medhat',
      chat: 'Welcome to flutter & firebase',
      isOnline: true,
  ),
  ChatModel(
      firstName:'Ahmed',
      lastName: 'Ahmed Emad',
      chat: 'Welcome to Backend',
      isOnline: false,
  ),
  ChatModel(
      firstName:'Ayman',
      lastName: 'Ayman Assim ',
      chat: 'Welcome to front_end',
      isOnline: false,
  ),
  ChatModel(
      firstName:'Youssef ',
      lastName: 'Youssef Elgebaly ',
      chat: 'Welcome to JS',
      isOnline: true,
  ),
  ChatModel(
      firstName:'Mohamed',
      lastName: 'Mohamed Saad',
      chat: 'Welcome to Assignment',
      isOnline: false,
  ),
  ChatModel(
      firstName:'Ahmed',
      lastName: 'Ahmed Essam',
      chat: 'Welcome to YouTube',
      isOnline: false,
  ),
  ChatModel(
      firstName:'Noha',
      lastName: 'Noha Ismail',
      chat: 'Welcome to Backend',
      isOnline: false,
  ),
  ChatModel(
      firstName:'Ramy',
      lastName: 'Ramy Saad',
      chat: 'Welcome to flutter',
      isOnline: true,
  ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/chat image.jpg'),
              radius: 25,
            ),
            SizedBox(width: 15,),
            Text(
                'Chats'
            )
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey[800],
            radius: 20,
            child: IconButton(
                onPressed: (){},
                icon: const Icon(
                    Icons.camera_alt,
                  color: Colors.white,
                )
            ),
          ),
          const SizedBox(width: 10,),
          CircleAvatar(
            backgroundColor: Colors.grey[800],
            radius: 20,
            child: IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                )
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            TextFormField(
              decoration:  InputDecoration(
                prefixIcon: const Icon(
                    Icons.search,
                  color: Colors.grey,
                ),
                hintText: 'Search',
                  hintStyle:const TextStyle(
                    color: Colors.grey
                  ) ,
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black
                  ),
                  borderRadius: BorderRadius.circular(50)
                ),
                constraints: const BoxConstraints(
                  maxHeight: 250,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,),
              child: SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>
                     ChatStoryItem(chatModel: chats[index]),
                    separatorBuilder:(context,index)=> const SizedBox(width: 10,),
                    itemCount: chats.length
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder:(context,index)=>
                 ChatItem(chatModel: chats[index]),
                separatorBuilder: (context,index)=>const SizedBox(height: 15,),
                itemCount: chats.length
            )
          ],
        ),
      ),
    );
  }
}
