import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  MessageModel({
    required this.idUser,
    required this.menssage,
    required this.dateTime,
  });
  DateTime dateTime;
  String menssage;
  int idUser;
}
