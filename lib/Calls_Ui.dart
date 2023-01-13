import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Calls_Ui(),
    debugShowCheckedModeBanner: false,
  ));
}

class Calls_Ui extends StatelessWidget {
  var name = [
    'David Bekham',
    'Messi',
    'Ronaldo',
    'Zidan',
    'Ramos',
    'pogba',
    'Griezman',
    'Mbape'
  ];
  var time = [
    '26/12/22,6:05pm',
    '26/12/22,4:30pm',
    '27/12/22,2:30pm',
    '30/12/22,1:18pm',
    '31/12/22,7:00pm',
    '26/12/22,6:05pm',
    '26/12/22,4:30pm',
    '27/12/22,2:30pm',
  ];
  var callicon=[
   Icon (Icons.call_received_outlined,color: Colors.green,),
    Icon(Icons.call_made_rounded,color: Colors.red,),
   Icon (Icons.call_received_outlined,color: Colors.green,),
    Icon (Icons.call_received_outlined,color: Colors.red,),
    Icon  (Icons.call_made_rounded,color: Colors.red,),
    Icon (Icons.call_received_outlined,color: Colors.green,),
    Icon (Icons.call_received_outlined,color: Colors.red,),
    Icon (Icons.call_made_rounded,color: Colors.red,),
  ];
  var images = [
    'assets/images/whatsapp default avatar.JPG',
    'assets/images/whatsapp default avatar.JPG',
    'assets/images/whatsapp default avatar.JPG',
    'assets/images/whatsapp default avatar.JPG',
    'assets/images/whatsapp default avatar.JPG',
    'assets/images/whatsapp default avatar.JPG',
    'assets/images/whatsapp default avatar.JPG',
    'assets/images/whatsapp default avatar.JPG',
  ];
  var icons=[
    Icons.phone,
    Icons.phone,
    Icons.videocam,
    Icons.videocam,
    Icons.phone,
    Icons.videocam,
    Icons.phone,
    Icons.phone,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2, top: 5),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal.shade400,
                  radius: 20,
                  child: Icon(Icons.link,color: Colors.white,),
                ),
                title: Text("Create call link"),
                subtitle: Text("Share a link for your WhatsApp call"),
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    color: Colors.white,
                    child: ListTile(
                      title: Text(name[index]),
                      subtitle: Row(
                        children: [
                          callicon[index],
                          Text(time[index])
                        ],
                      ),
                      leading: CircleAvatar(
                          backgroundImage: AssetImage(images[index])),
                      trailing: Icon(
                        icons[index],
                        color: Colors.teal.shade400,
                      ),
                    ),
                  );
                },
                itemCount: images.length,
              ),
            ),
          ],
        ),
        Positioned(
          right: 15,
            top: 550,
            child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.teal.shade400,
              radius: 25,
              child: Icon(Icons.add_ic_call_rounded,color: Colors.white,),

            )
          ],
        ))
      ]),
    );
  }
}
