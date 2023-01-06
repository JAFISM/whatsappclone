import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Status_ui(),
    debugShowCheckedModeBanner: false,
  ));
}

class Status_ui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 1),
              child: Stack(
                children: [
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/DB.jpg"),
                    ),
                    title: Text("My status"),
                    subtitle: Text("Tap to add status update"),
                  ),
                  Positioned(
                      left: 42,
                      bottom: 15,
                      child: CircleAvatar(
                        backgroundColor: Colors.greenAccent.shade400,
                        radius: 10,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 2, top: 5, bottom: 5, right: 260),
              child: Text(
                "Recent update",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade400,
                radius: 24,
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/DB.jpg"),
                ),
              ),
              title: Text("David Beckham"),
              subtitle: Text("Today,1:30pm"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade400,
                radius: 24,
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/DB.jpg"),
                ),
              ),
              title: Text("David Beckham"),
              subtitle: Text("Today,1:30pm"),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 2, top: 5, bottom: 5, right: 260),
              child: Text(
                "Viewed updates",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade400,
                radius: 24,
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/DB.jpg"),
                ),
              ),
              title: Text("David Beckham"),
              subtitle: Text("Today,1:30pm"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade400,
                radius: 24,
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/DB.jpg"),
                ),
              ),
              title: Text("David Beckham"),
              subtitle: Text("Today,1:30pm"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade400,
                radius: 24,
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/DB.jpg"),
                ),
              ),
              title: Text("David Beckham"),
              subtitle: Text("Today,1:30pm"),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade400,
                radius: 24,
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/DB.jpg"),
                ),
              ),
              title: Text("David Beckham"),
              subtitle: Text("Today,1:30pm"),
            ),
          ],
        ),
        Positioned(
            right: 15,
            top: 550,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  radius: 20,
                  child: Icon(
                    Icons.edit,
                    color: Colors.grey.shade600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.teal.shade400,
                    radius: 25,
                    child: Icon(Icons.camera_alt_rounded,color: Colors.white,),
                  ),
                )
              ],
            ))
      ]),
    );
  }
}
