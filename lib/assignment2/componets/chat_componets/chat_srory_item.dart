
import 'package:eraasoft_projects/assignment2/models/chat_model.dart';
import 'package:flutter/material.dart';

class ChatStoryItem extends StatelessWidget {
  const ChatStoryItem({Key? key, required this.chatModel}) : super(key: key);
final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return  Column(
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
        const SizedBox(height: 10,),
        Text(
         chatModel.firstName??'',
          style: const TextStyle(
              color: Colors.white
          ),
        )
      ],);
  }
}
