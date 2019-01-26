import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String amount = '';

    return Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          title: Text("Fake App"),
          backgroundColor: Colors.deepPurple,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Cannot Add yet");
          },
          backgroundColor: Colors.deepPurpleAccent,
          foregroundColor: Colors.yellowAccent,
          child: Text("Add"),
        ),
        //bottomNavigationBar: BottomNavigationBar(items: null),
        body: Container(
            padding: EdgeInsets.all(10.0),
            alignment: AlignmentDirectional.center,
            child: Column(
              children: <Widget>[
                Text("Current Amount is $amount"),
                Container(
                  padding: EdgeInsets.all(50.0),
                ),
                MyCustomButton(),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            )));
  }
}

class MyCustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text("Hello !"),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(color: Theme.of(context).buttonColor),
        child: Text('let\'s try'),
      ),
    );
  }
}
