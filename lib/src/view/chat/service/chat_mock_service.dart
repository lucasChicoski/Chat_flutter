


import 'package:chat/src/models/message_model.dart';
import 'package:chat/src/view/chat/service/chat_service.dart';

class ChatMockService implements ChatService {
  @override
  Stream<List<MessageModel>> messagesStream() {
    // TODO: implement messagesStream
    throw UnimplementedError();
  }

  @override
  Future<MessageModel> save(String text, String idMyUser) {
    // TODO: implement save
    throw UnimplementedError();
  }

}