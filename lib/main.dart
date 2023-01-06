import 'package:flutter/material.dart';
import 'package:whatsappclone/status_Ui.dart';

import 'Calls_Ui.dart';
import 'Chats_Ui.dart';



void main(){
  runApp(MaterialApp(
    home: MyTab(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: const Color(0xff128C7E))
    ),
  ),
  );
}
class MyTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.green.shade900,
          title: const Text("WhatsApp"),
          actions: [
            const Icon(Icons.camera_alt),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Icon(Icons.search),
            ),
            PopupMenuButton(itemBuilder: (context){
              return [
                const PopupMenuItem(child: Text("NewGroup")),
                const PopupMenuItem(child: Text("New broadCast")),
                const PopupMenuItem(child: Text("Linked devices")),
                const PopupMenuItem(child: Text("Starred messages")),
                const PopupMenuItem(child: Text("Payments")),
                const PopupMenuItem(child: Text("Settings")),

              ];
            })
          ],
          bottom:  TabBar(
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: EdgeInsets.zero,
              isScrollable: true,
              tabs: [
                SizedBox(
                  width:MediaQuery.of(context).size.width*.1,
                  child: const Tab(icon: Icon(Icons.people,size: 30,),),),
                SizedBox(width: MediaQuery.of(context).size.width*.3,
                    child: const Tab(text:'Chats')),
                SizedBox(
                    width: MediaQuery.of(context).size.width*.3,
                    child: const Tab(text: 'Status')),
                SizedBox(
                    width: MediaQuery.of(context).size.width*.3,
                    child: const Tab(text: 'Calls')),
              ]),
        ),
        body: TabBarView(
          children: [
            const Center(
              child: Text("Community"),
            ),
            Chats_ui(),
            Status_ui(),
            Calls_Ui(),
          ],
        ),
      ),
    );
  }

}