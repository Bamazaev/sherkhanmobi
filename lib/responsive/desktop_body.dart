import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icon/logoxbagr.svg',
            height: 40,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 18 / 6,
                      child: Container(
                        height: 250,
                        color: Colors.red[400],
                      ),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.red[300],
                                ),
                              ),
                            );
                          }))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 250,
                color: Colors.red[300],
              ),
            )
          ],
        ),
      ),
    );
  }
}
