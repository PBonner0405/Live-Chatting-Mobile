import 'package:flutter/material.dart';

const kAppname = "Live Chatting App";

Widget kLoadingWidget(context) => Center(
  child: SpinKitFadingCube(
    color: Theme.of(context).primaryColor,
    size: 30.0,
  ),
);