import 'package:flutter/material.dart';
import 'package:flutter_refactoring/login_page.dart';

class LoginButton extends StatelessWidget {
  // this 앞에 required를 붙이는 것은 매개변수가 항상 지정되어야 함을 나타낸다.
  const LoginButton(
      {required this.image,
      required this.text,
      required this.onPressed,
      super.key});

  // final 변수들은 한번 초기화가 되면 그 이후에는 절대로 변하지 않으나,
  // 로그인 페이지에서 새로운 값들이 생성자를 통해 전달되면 StatelessWidget 특성상
  // build method내의 모든 위젯들이 리빌딩 되는 과정에서 이 변수들 또한 리빌딩 되어
  // 새로운 값이 적용된다.
  final Widget image;
  final Widget text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    LoginPage login = const LoginPage();
    login.buildButton();

    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
        onPressed: onPressed,
        child: Row(
          children: [
            image,
            const SizedBox(width: 30),
            text,
          ],
        ));
  }
}
