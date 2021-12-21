import 'package:chat/src/view/chat/chat.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CallChat(),
    );
  }
}

class CallChat extends StatelessWidget {
  const CallChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd1ceeb),
      body: Chat(),
    );
  }
}
