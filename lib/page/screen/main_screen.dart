import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:k/page/screen/services/services_screen.dart';
import 'package:k/page/screen/settings/setting_screen.dart';
import 'package:k/page/screen/transfers/transfers_screen.dart';

import '../model/constants/color_constants.dart';
import '../theme/style.dart';
import 'add/add_screen.dart';
import 'transfers/card_screen.dart';
import 'home/home_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    const TransfersScreen(),
    AddScreen(),
    const ServicesScreen(),
    const AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: CustomColors.bottom,
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: const ArabicTextStyle(
              arabicFont: ArabicFont.dinNextLTArabic,
              fontSize: 14,
            ),
            unselectedLabelStyle: const ArabicTextStyle(
                arabicFont: ArabicFont.dinNextLTArabic,
                fontSize: 14,
                color: Colors.black),
            items: [
              const BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.wallet,
                ),
                label: "الحسابات",
              ),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.assistant_direction_sharp), label: "تحويل"),
              BottomNavigationBarItem(
                icon: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(255, 0, 192, 179),
                        Color.fromARGB(250, 203, 181, 194),
                      ]),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    )),
                label: '',
              ),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.card_travel_outlined), label: "الخدمات"),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.dehaze_sharp), label: "المزيد"),
            ],
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            }),
      ),
    );
  }
}
