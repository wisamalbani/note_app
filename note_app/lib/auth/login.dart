import 'package:flutter/material.dart';
import 'package:note_app/auth/signup.dart';
import 'package:note_app/home/homepage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscurepass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset("images/logo.png")),
        Container(
          padding: EdgeInsets.all(20),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "username",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    )),
              ),
              SizedBox(height: 20),
              TextFormField(
                obscureText: obscurepass,
                decoration: InputDecoration(
                    suffixIcon: InkWell(
                      child: Icon(obscurepass
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onTap: () {
                        setState(() {
                          obscurepass = !obscurepass;
                        });
                      },
                    ),
                    prefixIcon: Icon(Icons.password),
                    hintText: "password",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    )),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text("if you don't have an account  "),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("signup");
                      },
                      child: Text(
                        "Click Here",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("homepage");
                  },
                  child: Text(
                    "تسجيل الدخول",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ],
          )),
        )
      ],
    ));
  }
}
