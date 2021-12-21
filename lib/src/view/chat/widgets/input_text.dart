import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTextCustom extends StatelessWidget {
  const InputTextCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.send_rounded)),
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
