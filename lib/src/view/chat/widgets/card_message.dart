import 'package:flutter/material.dart';

class CardMessage extends StatelessWidget {
  final String? menssage;

  const CardMessage({Key? key, this.menssage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          padding: EdgeInsets.all(10),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.6,
            minWidth: 50
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffe287a1),
          ),
          child: Text(menssage!),
        ),
      ),
    );
  }
}
