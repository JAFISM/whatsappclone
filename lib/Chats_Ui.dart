import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Chats_ui(),
    debugShowCheckedModeBanner: false,
  ));
}

class Chats_ui extends StatelessWidget {
  var images = [
    'assets/images/DB.jpg',
    'assets/images/DB.jpg',
    'assets/images/DB.jpg',
    'assets/icons/default-avatar.png',
    'assets/images/DB.jpg',
    'assets/images/DB.jpg',
    'assets/images/DB.jpg',
    'assets/icons/default-avatar.png',
    'assets/images/DB.jpg',
    'assets/images/DB.jpg',
    'assets/images/DB.jpg',
    'assets/icons/default-avatar.png'
  ];
  var name = [
    'David Beckham',
    'Tony',
    'David Beckham',
    'Unknown',
    'David Beckham',
    'Jafis',
    'David Beckham',
    'Unknown',
    'David Beckham',
    'Johnyy',
    'David Beckham',
    'Unknown',
  ];
  var chats = [
    'Heloo',
    'hi',
    'hiiiii',
    'gud mrng',
    'Heloo',
    'hi',
    'hiiiii',
    'gud mrng',
    'Heloo',
    'hi',
    'hiiiii',
    'gud mrng',
  ];
  var time = [
    '9:30pm',
    '8:25pm',
    '8:00pm',
    '7:05am',
    '9:30pm',
    '8:25pm',
    '8:00pm',
    '7:05am',
    '9:30pm',
    '8:25pm',
    '8:00pm',
    '7:05am',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ListView.builder(
          itemBuilder: (BuildContext context, index) {
            return Container(
              child: ListTile(
                title: Text(name[index]),
                subtitle: Text(
                  chats[index],
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
                trailing: Text(
                  time[index],
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ),
            );
          },
          itemCount: images.length,
        ),
        Positioned(
          right: 12,
            top: 550,
            child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.teal.shade400,
              child: Icon(Icons.message_rounded,color: Colors.white,),
              radius: 28,
            )
          ],
        ))
      ]),
    );
  }
}
