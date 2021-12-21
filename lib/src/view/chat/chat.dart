import 'package:chat/src/view/chat/widgets/card_message.dart';
import 'package:chat/src/view/chat/widgets/input_text.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Column(
        children: [
          Expanded(
            child: Container(
              //  color: Colors.blue,
               width: double.infinity,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: ((context, index) {
                  return CardMessage(
                    menssage: 'Lucassssssssssssssssssssssssssssssssssssssss',
                  );
                }),
              ),
            ),
          ),
          Container(
            // color: Colors.yellow,
            height: 80,
            child: InputTextCustom(),
          ),
        ],
      ),
    );
  }
}
