import 'package:flutter/material.dart';

class HomeFull extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeFullState();
  }
}

class HomeFullState extends State<HomeFull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MakeItRainApp"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.send), onPressed: null),
          IconButton(icon: Icon(Icons.search), onPressed: null),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt), title: Text("Receipt")),
          BottomNavigationBarItem(
              icon: Icon(Icons.find_in_page), title: Text("Find In Page"))
        ],
        onTap: (int i) {
          debugPrint("$i has been pressed");
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint("You pressed on My FAB"),
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
