import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi/main.dart';

class Homepag extends StatefulWidget {
  const Homepag({super.key});

  @override
  State<Homepag> createState() => _HomepagState();
}

class _HomepagState extends State<Homepag> {
  bool isSystemMode = true; // Ин барои санҷиши ҳолати система

  @override
  Widget build(BuildContext context) {
    Brightness brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = MyApp.themeNotifier.value == ThemeMode.dark ||
        (MyApp.themeNotifier.value == ThemeMode.system &&
            brightness == Brightness.dark);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icon/logoxbagr.svg',
            height: 25,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icon/local.svg'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icon/search1.svg'),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                if (isSystemMode) {
                  // Агар режим "системавӣ" бошад, онро дастӣ идора мекунем
                  MyApp.themeNotifier.value = brightness == Brightness.dark
                      ? ThemeMode.light
                      : ThemeMode.dark;
                  isSystemMode = false;
                } else {
                  // Агар режим аллакай дастӣ бошад, онро ба система мегузорем
                  MyApp.themeNotifier.value = ThemeMode.system;
                  isSystemMode = true;
                }
              });
            },
            icon: SvgPicture.asset(
              isDarkMode ? 'assets/icon/light.svg' : 'assets/icon/dark.svg',
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          // 🔹 GridView (Миёна)
          Padding(
            padding: const EdgeInsets.only(
                top: 170, bottom: 0), // Ҷой барои контейнерҳо
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemCount: 24,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(196, 34, 45, 1),
                  ),
                  width: 50,
                  height: 50,
                );
              },
            ),
          ),

          // 🔹 Контейнери боло (Баннер)
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromRGBO(196, 34, 45, 1),
              ),
              child: Center(
                child: Text(
                  'Баннер',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
