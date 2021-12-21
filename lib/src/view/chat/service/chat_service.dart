import 'package:chat/src/view/chat/service/chat_mock_service.dart';

import '../../../models/message_model.dart';

abstract class ChatService {
  
  factory ChatService() {
    return ChatMockService();
  }

  //método que salva as mensagens
  Future<MessageModel> save(String text, String idMyUser);

  //Vantagens de usar um streaming de dados.
  Stream<List<MessageModel>> messagesStream();
}
