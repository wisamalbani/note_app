import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                    prefixIcon: Icon(Icons.email),
                    hintText: "email",
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
                    Text("if you have an account  "),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("login");
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
                  onPressed: () {},
                  child: Text(
                    "انشاء الحساب",
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
