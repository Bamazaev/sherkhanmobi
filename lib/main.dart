import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.system);

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: MyApp.themeNotifier,
      builder: (context, mode, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: mode,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          home: AnimatedSplashScreen(
            splash: SvgPicture.asset('assets/icon/mobi white.svg'),
            duration: 1000,
            splashTransition: SplashTransition.scaleTransition,
            backgroundColor: const Color.fromRGBO(196, 34, 46, 1),
            nextScreen: const Homepage(),
          ),
        );
      },
    );
  }
}
