import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hint ;
  bool isSecret ;
   CustomTextField({super.key,
  required this.hint ,
    this.isSecret = false

  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      obscureText: isSecret,
      obscuringCharacter: "*",
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white60),
          enabledBorder: UnderlineInputBorder(
              borderSide:BorderSide(
                  width: 1,color: Colors.grey

              )
          ),
        focusedBorder: UnderlineInputBorder(
            borderSide:BorderSide(
                width: 1,color: Colors.grey

            )
        ),
      ),
    );
  }
}
