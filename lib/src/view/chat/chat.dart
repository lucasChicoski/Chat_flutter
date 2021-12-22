import 'package:chat/src/view/chat/service/chat_mock_service.dart';
import 'package:chat/src/view/chat/service/chat_service.dart';
import 'package:chat/src/view/chat/widgets/card_message.dart';
import 'package:chat/src/view/chat/widgets/input_text.dart';
import 'package:flutter/material.dart';

import '../../models/message_model.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  String? someMessage;

  Future<void> _sendMessage() async {
    ChatService().save(someMessage!, '0');
  }

  @override
  Widget build(BuildContext context) {
    ChatMockService abobrinha = ChatMockService();
    return StreamBuilder<List<MessageModel>>(
        stream: ChatService().messagesStream(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Container(
                alignment: Alignment.center,
                child: Text("Não existe conversa ainda"));
          } else {
            final mensagem = snapshot.data!;
            return Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: mensagem.length,
                        itemBuilder: ((context, index) {
                          return CardMessage(
                            menssage: mensagem[index].menssage,
                          );
                        }),
                      ),
                    ),
                  ),
                  Container(
                    // color: Colors.yellow,
                    height: 80,
                    child: InputTextCustom(
                      sendMessage: _sendMessage,
                      onSubmit: (value) {
                        print('object');
                        _sendMessage();
                      },
                      myMenssage: (menssage) {
                        setState(() {
                          someMessage = menssage;
                          print(someMessage);
                        });
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        });
  }
}
