import 'dart:async';

import 'package:chat/src/models/message_model.dart';
import 'package:chat/src/view/chat/service/chat_service.dart';

class ChatMockService implements ChatService {
  static final List<MessageModel> _msg = [
     MessageModel(idUser: '0', menssage: "ola, tudo bem ?"),
    // MessageModel(idUser: '1', menssage: "Ei, tudo bem"),
  ];
  static MultiStreamController<List<MessageModel>>? _controller;
  static final _msgStream = Stream<List<MessageModel>>.multi((controller) {
    _controller = controller;
    controller.add(_msg);
  });

  @override
  Stream<List<MessageModel>> messagesStream() {
    return _msgStream;
  }

  @override
  Future<MessageModel> save(String text, String idMyUser) async {
    final newMessage = MessageModel(idUser: idMyUser, menssage: text);
    _msg.add(newMessage);
    _controller!.add(_msg);
    return newMessage;
  }
}
