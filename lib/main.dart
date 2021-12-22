import 'dart:math';

import 'package:chat/src/controllers/chat_controller.dart';
import 'package:chat/src/view/chat/chat.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  instances();
  runApp(const MainApp());
}

void instances() {
  GetIt.I.registerSingleton<ChatController>(ChatController());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CallChat(),
    );
  }
}

class CallChat extends StatelessWidget {
  const CallChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffd1ceeb),
      body: Chat(),
    );
  }
}
