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

  // Define Controllers
  final TextEditingController _textController = new TextEditingController();

  // Define Functions
  void _handleSubmitted(String text) {
    _textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WB Chat"),
      ),
      body: _buildTextComposer(),
    );
  }

  Widget _buildTextComposer() {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new TextField(
        controller: _textController,
        onSubmitted: _handleSubmitted,
        decoration: new InputDecoration.collapsed(hintText: "Send a Message"),
      ),
    );
  }
}