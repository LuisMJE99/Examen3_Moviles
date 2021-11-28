
import 'package:flutter/material.dart';

class WidLogo extends StatelessWidget {
  final String texto1;
  const WidLogo({Key? key,
   required this.texto1,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Image(image: AssetImage('assets/11.png')),
            SizedBox(
              height: 30,
            ),
            Text(
              texto1,
              style: TextStyle(fontSize: 25, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
