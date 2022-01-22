import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.blueAccent),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InputField(
              controller: _emailField,
              hint: "something@email.com",
              label: 'Email',
            ),
            InputField(
              hint: "Password",
              label: "password",
              controller: _passwordField,
              obscureText: true,
            ),
            CustomButton(
              function: () {},
              label: 'Register',
            ),
            CustomButton(
              function: (){},
              label: "Login",
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.function,
  }) : super(key: key);

  final String label;
  final function;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.4,
      height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: MaterialButton(
        onPressed: function,
        child: Text(label),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.obscureText = false,
    required this.hint,
    required this.label,
    required this.controller,
  }) : super(key: key);

  final bool obscureText;
  final TextEditingController controller;
  final String hint;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white),
          labelText: label,
          labelStyle: TextStyle(color: Colors.white)),
    );
  }
}
