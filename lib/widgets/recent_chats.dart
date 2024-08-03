import 'package:flutter/material.dart';
import 'package:mobile_chat_flutter/models/message.dart';
import 'package:mobile_chat_flutter/screens/chat_screen.dart';

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
          child: ClipRRect(
            borderRadius:  const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)),
            child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (BuildContext content, int index){
                  final Message chat =  chats[index];
                 return GestureDetector(
                   onTap: ()=> Navigator.push(context, MaterialPageRoute(builder:(_) =>ChatScreen(user: chat.sender,))),
                   child: Container(
                     margin: const EdgeInsets.only(top: 5,bottom: 5,right: 10),
                     padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                     decoration:  BoxDecoration(
                       color: chat.unread ?Colors.brown.withOpacity(0.6):Colors.brown.withOpacity(0.2),
                       borderRadius:  const BorderRadius.only(
                           topRight: Radius.circular(20),
                           bottomRight: Radius.circular(20)),
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children: [
                              CircleAvatar(
                               radius: 30,
                               backgroundImage: AssetImage(chat.sender.imageUrl),
                             ),
                             const SizedBox(width: 10,),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(
                                   chat.sender.name,
                                   style: const TextStyle(
                                       color: Colors.white
                                   ),
                                 ),
                                 const SizedBox(height: 10,),
                                 SizedBox(
                                   width: MediaQuery.of(context).size.width * 0.45,
                                   child: Text(
                                     chat.text,
                                     style: const TextStyle(
                                         color: Colors.white70
                                     ),
                                     overflow: TextOverflow.ellipsis,
                                   ),
                                 ),
                               ],
                             ),

                           ],
                         ),
                          Column(
                           children: [
                             Text(chat.time,style: const TextStyle(color: Colors.white),),
                              const SizedBox(height: 5,),
                              chat.unread
                                  ?Container(
                                height: 20,
                                 width: 40,
                                 decoration: BoxDecoration(
                                   color: Colors.blue,
                                   borderRadius: BorderRadius.circular(30)
                                 ),
                                 child:  const Center(
                                     child: Text('NEW',
                                       style: TextStyle(
                                           color: Colors.white,
                                         fontSize: 12,
                                         fontWeight: FontWeight.normal
                                       ),
                                     )
                                 )
                              )
                                  :const SizedBox.shrink(),
                           ],
                         )
                       ],
                     ),
                   ),
                 );
                }
                ),
          ),
        )
    );
  }
}
