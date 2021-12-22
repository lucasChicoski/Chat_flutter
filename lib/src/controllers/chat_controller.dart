import 'package:chat/src/models/message_model.dart';
import 'package:flutter/rendering.dart';
import 'package:mobx/mobx.dart';
part 'chat_controller.g.dart';

class ChatController = _ChatControllerBase with _$ChatController;

abstract class _ChatControllerBase with Store {
  ObservableList<MessageModel> messages = ObservableList();

  @observable
  String? message;

  @action
  void setMessage(String? value) {
    message = value;
    print(value);
  }

  @observable
  int idUser = 0;

  @action
  void setIdUser(int value) {
    idUser = value;
  }

  @action
  void sendMessage() {
    messages.add(MessageModel(
      idUser: idUser,
      menssage: message!,
    ));
  }

  @computed
  MainAxisAlignment get isMe => messages[messages.length -1].idUser == idUser
      ? MainAxisAlignment.end
      : MainAxisAlignment.start;
}
