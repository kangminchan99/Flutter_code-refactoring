import 'package:flutter/material.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
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
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
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
        ),
      ),
    );
  }
}
