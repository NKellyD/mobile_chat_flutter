import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_chat_flutter/models/message.dart';

import '../models/user.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  const ChatScreen({super.key, required this.user});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe){
    final Container msg = Container(
      margin: isMe ?const EdgeInsets.only(top: 8, bottom: 8, left: 80)
          :const EdgeInsets.only(top: 8, bottom: 8, ),
      decoration: BoxDecoration(
        color: isMe ?Colors.black.withOpacity(0.5):Colors.green.withOpacity(0.6),
        borderRadius: isMe ?const BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ):const BorderRadius.only(
          topRight: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      width: MediaQuery.of(context).size.width * 0.75,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(message.time,style: const TextStyle(color: Colors.white)),
          Text(message.text,style: const TextStyle(color: Colors.white),),
        ],
      ),
    );
    if(isMe){
     return msg;
    }
    return Row(
      children: [
       msg,
       IconButton(
          icon:   message.isLiked?const Icon(FontAwesomeIcons.solidHeart,size: 22,color: Colors.red,)
              :const Icon(FontAwesomeIcons.solidHeart,size: 22,color: Colors.white,),
          iconSize: 20.0,
          color: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
  _buildMessageComposer(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      child: Row(
        children: [
          IconButton(
            icon:  const Icon(Icons.photo,size: 22,),
            iconSize: 20.0,
            color: Colors.red,
            onPressed: () {},
          ),
           const Expanded(child: TextField(
            decoration: InputDecoration(
              hintText: 'send a message....',

            ),
          )),
          IconButton(
            icon:  const Icon(Icons.send,size: 22,),
            iconSize: 20.0,
            color: Colors.red,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(widget.user.imageUrl),
            ),
            const SizedBox(width: 8,),
            Text(widget.user.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon:  const Icon(Icons.video_call,size: 22,),
            iconSize: 20.0,
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon:  const Icon(Icons.phone,size: 22,),
            iconSize: 20.0,
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon:  const Icon(Icons.more_vert,size: 22,),
            iconSize: 20.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20)
                ),
                color: Colors.black.withOpacity(0.4),
              ),
              child: ListView.builder(
               // reverse: true,
                  padding: const EdgeInsets.only(top: 15),
                  itemCount: messages.length,
                  itemBuilder:(BuildContext context,int index){
                    final Message message = messages[index];
                   final  bool isMe = message.sender.id == currentUser.id;
                    return _buildMessage(message, isMe);
                  }
              ),
            ),
          ),
          _buildMessageComposer()
        ],
      ),
    );
  }
}
