import 'package:flutter/material.dart';

void main() => runApp(WBChat());

class WBChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "WB Chat",
      home: new MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {

  @override
  State createState() => new MainScreenState();

}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WB Chat"),
      ),
    );
  }
}