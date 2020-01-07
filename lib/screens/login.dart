import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../common/config.dart';
import '../widgets/webview.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  AnimationController _loginButtonController;
  String username, password;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  var parentContext;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _loginButtonController.dispose();
    super.dispose();
  }

  Future<Null> _playAnimation() async {
    try {
      setState(() {
        isLoading = true;
      });
      await _loginButtonController.forward();
    } on TickerCanceled {}
  }

  Future<Null> _stopAnimation() async {
    try {
      await _loginButtonController.reverse();
      setState(() {
        isLoading = false;
      });
    } on TickerCanceled {}
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    parentContext = context;
    final screenSize = MediaQuery.of(context).size;

    String forgetPasswordUrl = serverConfig['forgetPassword'];

    // Open Webview on Forget Password Link is clicked
    Future launchForgetPasswordUrl(String url) async {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => WebView(url: url, title: 'Reset Password'),
          fullscreenDialog: true,
        )
      );
    }

    // Handle on Login button clicked
    _login(context) async {
      if( username == null || password == null ) {
        var snackbar = SnackBar(content: Text("Please Input Valid Credential!"));
        Scaffold.of(context).showSnackBar(snackbar);
      } else {
        _playAnimation();
      }
    }
  }
}