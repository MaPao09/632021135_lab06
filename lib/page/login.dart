import 'package:flutter/material.dart';
import 'package:lab06/page/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _emailcon = TextEditingController();
  final TextEditingController _passwordcon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text("Login"))),
      body: SafeArea(
          child: Form(
        key: _formKey,
        child: ListView(
          children: [
            buildEmail(),
            buildPAssword(),
            buildLogin(),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Register(),
                      ));
                },
                child: const Text("Register"))
          ],
        ),
      )),
    );
  }

  ElevatedButton buildLogin() {
    return ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {}
        },
        child: const Text("Login"));
  }

  TextFormField buildPAssword() {
    return TextFormField(
      controller: _passwordcon,
      validator: (value) {
        if (value!.isEmpty) {
          return "Please Enter Password";
        }
        return null;
      },
    );
  }

  TextFormField buildEmail() {
    return TextFormField(
      controller: _emailcon,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return "Please Enter Email";
        }
        return null;
      },
    );
  }
}
