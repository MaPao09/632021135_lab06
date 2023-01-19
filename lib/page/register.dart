import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _emailcon = TextEditingController();
  final TextEditingController _passwordcon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text("Register"))),
      body: SafeArea(
          child: Form(
        key: _formKey,
        child: ListView(
          children: [
            buildEmail(),
            buildPAssword(),
            buildRegister(),
          ],
        ),
      )),
    );
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

  ElevatedButton buildRegister() {
    return ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {}
        },
        child: const Text("Register"));
  }
}
