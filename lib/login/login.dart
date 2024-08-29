import 'package:flutter/material.dart';

import '../home/home.dart';
import 'custom_text_field.dart';

class Login extends StatelessWidget {
  static const String routeName = "login" ;
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3B5898),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(),
              Icon(Icons.facebook,color: Colors.white,size: 60,),
              CustomTextField(hint: "Email or Phone"),
              SizedBox(height: 20,),
              CustomTextField(hint: "Password",isSecret: true,),
              SizedBox(height: 20,),
              MaterialButton(onPressed: (){
                Navigator.pushReplacementNamed(
                    context, Home.routeName) ;
              } ,
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                color: Colors.white24,
                child: Text("Login",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white
                ),
                ),
              ),
              ),
              Spacer(),
              TextButton(onPressed: (){},
                  child: Text("Sgin Up On Facebook",
                  style: TextStyle(color: Colors.white),

                  ),

              ),
              TextButton(onPressed: (){},
                child: Text("Forget Password",
                  style: TextStyle(color: Colors.white),

                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
