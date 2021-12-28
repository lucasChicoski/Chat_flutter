import 'package:chat/src/controllers/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

ChatController _chatController = GetIt.I<ChatController>();

class InputTextCustom extends StatelessWidget {
  final Function(String?)? myMenssage;
  final VoidCallback? sendMessage;
  final Function(String?)? onSubmit;
  const InputTextCustom({
    Key? key,
    this.myMenssage,
    this.sendMessage,
    this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: TextField(
        onChanged: myMenssage,
        onSubmitted: onSubmit,
        controller: _chatController.textEditingController,
        decoration: InputDecoration(

            suffixIcon: IconButton(
                onPressed: sendMessage, icon: Icon(Icons.send_rounded)),
            filled: true,
            fillColor: Color(0xff9ccbe3),
            hintText: 'Digite uma mensagem',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
