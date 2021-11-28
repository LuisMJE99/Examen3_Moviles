import 'package:flutter/material.dart';

class WidInput extends StatelessWidget {
  final TextInputType KeyboradType;
  final IconData icono;
  final String placeHolder;
  final bool isPassword;
  final TextEditingController textController;
  const WidInput({
    Key? key, 
    required this.KeyboradType, 
    required this.icono, 
    required this.placeHolder, 
    required this.isPassword, 
    required this.textController
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5,left: 5, bottom: 5,right: 15),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Color.fromRGBO(0, 11, 71, 0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        controller: textController,
        autocorrect: false,
        keyboardType: KeyboradType,

        obscureText: isPassword,
        style: TextStyle(color: Colors.white, fontSize: 20),
        decoration: InputDecoration(
          prefixIcon: Icon(
            icono,
            color: Color.fromARGB(146, 184, 31, 1),
        ),
        focusedBorder: InputBorder.none,
        border: InputBorder.none,
        hintText: placeHolder,
        hintStyle: TextStyle(color: Colors.white, fontSize: 20)),
    ),
    );
  }
}
