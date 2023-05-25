import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                obscureText: true,
                decoration: InputDecoration(
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
                      onTap: () {},
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
                  onPressed: () {},
                  child: Text(
                    "تسجيل الدخول",
                    style: TextStyle(fontSize: 20),
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
