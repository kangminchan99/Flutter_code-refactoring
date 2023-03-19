import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
        onPressed: () {},
        child: Row(
          children: [
            Image.asset('images/glogo.png'),
            const SizedBox(width: 30),
            const Text(
              'Login with Google',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ));
  }
}
