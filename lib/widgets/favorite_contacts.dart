import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/message.dart';

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
                'Favorite Contacts',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Calibri',
                    color: Colors.black,
                    letterSpacing: 1),
              ),
              IconButton(
                icon: const Icon(Icons.more_horiz),
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
                return Padding(
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
                          fontSize: 12,
                          color: Colors.blueAccent
                        ),
                      )
                    ],
                  ),
                );
              }
          ),
        )
      ],
    );
  }
}
