import 'package:flutter/material.dart';
import 'package:mobile_chat_flutter/models/message.dart';

class RecentChats extends StatefulWidget {
  const RecentChats({super.key});

  @override
  State<RecentChats> createState() => _RecentChatsState();
}

class _RecentChatsState extends State<RecentChats> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)),
          ),
          child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (BuildContext content, int index){
                final Message chat =  chats[index];
               return Row(
                 children: [
                   Row(
                     children: [
                        CircleAvatar(
                         radius: 30,
                         backgroundImage: AssetImage(chat.sender.imageUrl),
                       ),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             chat.sender.name,
                             style: const TextStyle(
                                 color: Colors.white
                             ),
                           ),
                           Text(
                             chat.text,
                             style: const TextStyle(
                                 color: Colors.white
                             ),
                           ),
                         ],
                       ),

                     ],
                   ),
                    Column(
                     children: [
                       Text(chat.time,style: const TextStyle(color: Colors.white),),
                       const Text('NEW',style: TextStyle(color: Colors.white),)
                     ],
                   )
                 ],
               );
              }
              ),
        )
    );
  }
}
