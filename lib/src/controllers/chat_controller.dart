import 'dart:typed_data';

import 'package:chat/src/models/message_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:mobx/mobx.dart';
part 'chat_controller.g.dart';

class ChatController = _ChatControllerBase with _$ChatController;

abstract class _ChatControllerBase with Store {
  ObservableList<MessageModel> messages = ObservableList();

  var store = FirebaseFirestore.instance;

  @observable
  String? message;

  @action
  void setMessage(String? value) {
    message = value;
    print(value);
  }

  @observable
  int idUser = 0;

  @observable
  int indexTeste = 0;

  @action
  void setIdUser(int value) {
    idUser = value;
  }

  @action
  void sendMessage() {
    store.collection('chat').add({
      "message": message!,
      "id": idUser,
      "date": DateTime.now().toIso8601String().toString(),
    });
    textEditingController.text = '';
  }

  @observable
  var textEditingController = TextEditingController();

  void listenMessages() {
    final x = store.collection('chat').orderBy('date').snapshots();
    x.listen((event) {
      messages.clear();

      for (var item in event.docs) {
        print("hello ${item.data()['date']}");
        print("modificado ${DateTime.parse(item.data()['date'])}");

        messages.add(MessageModel(
          dateTime: DateTime.parse(item.data()['date']), //item.data()['date'],
          idUser: item.data()['id'],
          menssage: item.data()['message'],
        ));
      }
    });
  }

  @computed
  MainAxisAlignment get isMe => messages[indexTeste].idUser == idUser
      ? MainAxisAlignment.end
      : MainAxisAlignment.start;
}
