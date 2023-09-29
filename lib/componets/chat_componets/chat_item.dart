import 'package:flutter/material.dart';

import '../../models/chat_model.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         Stack(
            alignment: Alignment.bottomRight,
            children:[
              const CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/images/chat image.jpg'),
              ),
              Visibility(
                visible: chatModel.isOnline??false,
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 2,right: 2),
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.green,
                  ),
                ),
              )
            ]
        ),
        const SizedBox(width: 15,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chatModel.lastName??'',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17
                ),
              ),
              const SizedBox(height: 8,),
              Text(
                chatModel.chat??'',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14
                ),
              ),
            ],
          ),
        ),
        const Text(
          '11:37 pm',
          style: TextStyle(
            color: Colors.grey
          ),
        ),
      ],
    );
  }
}
