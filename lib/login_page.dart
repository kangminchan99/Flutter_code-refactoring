import 'package:flutter/material.dart';
import 'package:flutter_refactoring/utils/login_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign In',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: buildButton(),
      ),
    );
  }

  //  _ : 접근 제어자 => private (같은 파일 내에서만 접근 가능)
  // ex) _buildButton
  Widget buildButton() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
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
              )),
          // ex) code refactoring
          LoginButton(
              image: Image.asset('images/glogo.png'),
              text: const Text(
                'Login with Google',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {}),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {},
              child: Row(
                children: [
                  Image.asset('images/flogo.png'),
                  const SizedBox(width: 30),
                  const Text(
                    'Login with Facebook',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(Icons.email),
                  SizedBox(width: 35),
                  Text(
                    'Login with Email',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
