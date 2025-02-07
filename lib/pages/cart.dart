import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobi/backend/user.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/icon/carttext.svg',
          height: 40,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icon/cartout.svg',
              height: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          // 🔹 Рӯйхати сабади харид
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        activeColor: Color.fromRGBO(196, 34, 45, 1),
                        value: users[index].checkbox,
                        onChanged: (bool? newValue) {
                          setState(() {
                            users[index].toggleCheckbox();
                          });
                        },
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(users[index].image),
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Text(users[index].name),
                  subtitle: Text(users[index].profession),
                );
              },
            ),
          ),

          // 🔹 Контейнер дар поёни экран
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 📌 Қимати умумӣ (ба ҷои "0 сомонӣ" мумкин аст ҳисоб кунед)
                Text(
                  '0 сомон',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                // 📌 Тугмаи "Харид кардан"
                ElevatedButton(
                  onPressed: () {
                    // Амали харид кардан
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(196, 34, 45, 1),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: Text(
                    'Купить',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
