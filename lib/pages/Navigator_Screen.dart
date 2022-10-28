import 'package:flutter/material.dart';
import 'package:the_kost/pages/history_screen.dart';
import 'package:unicons/unicons.dart';
import 'package:the_kost/pages/home_screen.dart';
import 'package:the_kost/pages/promo_screen.dart';
import 'package:the_kost/pages/transaksi_screen.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  final List Screen = [
    HomeScreen(),
    PromoScreen(),
    TransaksiScreen(),
    HistoryScreen(),
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        onTap: onTap,
        selectedFontSize: 16,
        unselectedFontSize: 12,
        iconSize: 24,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.home_alt),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount),
            label: "Discount",
          ),
          BottomNavigationBarItem(
            icon: Icon(UniconsLine.transaction),
            label: "Transaksi",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
          ),
        ],
      ),
    );
  }
}
