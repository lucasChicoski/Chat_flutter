import 'dart:math';

import 'package:chat/src/view/chat/widgets/card_message.dart';
import 'package:chat/src/view/chat/widgets/input_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../controllers/chat_controller.dart';
import '../../models/message_model.dart';

ChatController chatController = GetIt.I<ChatController>();

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  int? userId;

  @override
  void initState() {
    var randomNumber = Random();
    int idGenerated = randomNumber.nextInt(1000);
    chatController.setIdUser(idGenerated);
    chatController.listenMessages();
    setState(() {
      userId = idGenerated;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Column(
        children: [
          Expanded(
            child: Observer(builder: (_) {
              return Container(
                width: double.infinity,
                child: ListView.builder(
                  itemCount: chatController.messages.length,
                  itemBuilder: ((context, index) {
                    chatController.indexTeste = index;
                    return Row(
                      mainAxisAlignment: chatController.isMe,
                      children: [
                        //  ElevatedButton(onPressed: chatController.teste , child: Text('click')),
                        CardMessage(
                          menssage: chatController.messages[index].menssage,
                        ),
                      ],
                    );
                  }),
                ),
              );
            }),
          ),
          Container(
            // color: Colors.yellow,
            height: 80,
            child: InputTextCustom(
              
              sendMessage: chatController.sendMessage,
              myMenssage: chatController.setMessage,
            ),
          ),
        ],
      ),
    );
  }
}
