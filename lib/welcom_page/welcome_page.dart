import 'package:flutter/material.dart';

class WelcomPage extends StatefulWidget {
  const WelcomPage({Key? key}) : super(key: key);

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF201F24),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.fromLTRB(48, 108, 30, 0),
          child: const Image(
            image: AssetImage('assets/images/welcome_uno 1.png'),
            height: 330,
            width: 330,
          ),
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 80),
              child: const Text(
                'Welcome to\nUno To Do!',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                'Start using the best To Do app',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFCBBEFF),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 70,
        ),
        MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          minWidth: 360,
          height: 40,
          color: const Color(0xFF9373FF),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: const Text(
            'Get started',
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
    );
  }
}
