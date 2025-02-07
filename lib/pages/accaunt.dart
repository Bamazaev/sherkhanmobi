import 'package:flutter/material.dart';

class accaunt extends StatefulWidget {
  const accaunt({super.key});

  @override
  State<accaunt> createState() => _accauntState();
}

class _accauntState extends State<accaunt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Аккаунт',
        style: TextStyle(color: Color.fromRGBO(196, 34, 45, 1), fontSize: 60),
      )),
    );
  }
}
