import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Поиск',
        style: TextStyle(color: Color.fromRGBO(196, 34, 45, 1), fontSize: 60),
      )),
    );
  }
}
