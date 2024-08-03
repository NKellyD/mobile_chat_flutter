import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/message.dart';
import '../screens/chat_screen.dart';

class FavoriteContacts extends StatefulWidget {
  const FavoriteContacts({super.key});

  @override
  State<FavoriteContacts> createState() => _FavoriteContactsState();
}

class _FavoriteContactsState extends State<FavoriteContacts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Status',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Calibri',
                    color: Colors.blue,
                    letterSpacing: 1),
              ),
              IconButton(
                icon: const Icon(Icons.more_horiz,color: Colors.white,),
                onPressed: () {},
              )
            ],
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 10),
            scrollDirection: Axis.horizontal,
              itemCount: favorite.length,
              itemBuilder: (BuildContext context, int index){
                return GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder:(_) =>ChatScreen(user: favorite[index],))),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(favorite[index].imageUrl),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          favorite[index].name,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
          ),
        )
      ],
    );
  }
}
