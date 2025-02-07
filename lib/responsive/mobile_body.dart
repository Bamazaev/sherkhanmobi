import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi/pages/accaunt.dart';
import 'package:mobi/pages/cart.dart';
import 'package:mobi/pages/chat.dart';
import 'package:mobi/pages/home.dart';
import 'package:mobi/pages/search.dart';

class MyMobileBody extends StatefulWidget {
  const MyMobileBody({super.key});

  @override
  State<MyMobileBody> createState() => _MyMobileBodyState();
}

class _MyMobileBodyState extends State<MyMobileBody> {
  int index = 0;
  List pages = [Homepag(), search(), chat(), Cart(), accaunt()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        selectedItemColor: Color.fromRGBO(196, 36, 45, 1),
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(
              'assets/icon/home.svg',
              height: 26,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Каталог',
            icon: SvgPicture.asset(
              'assets/icon/search.svg',
              height: 26,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Чать',
            icon: SvgPicture.asset(
              'assets/icon/chat.svg',
              height: 26,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Корзина',
            icon: SvgPicture.asset(
              'assets/icon/cart.svg',
              height: 26,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Аккаунт',
            icon: SvgPicture.asset(
              'assets/icon/accaunt.svg',
              height: 26,
            ),
          ),
        ],
      ),
    );
  }
}
