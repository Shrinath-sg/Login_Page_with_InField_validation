import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_screen_jk/screens/splash_screen.dart';
import 'package:login_screen_jk/screens/tab_four_screen.dart';
import 'package:login_screen_jk/screens/tab_one_screen.dart';
import 'package:login_screen_jk/screens/tab_three_screen.dart';
import 'package:login_screen_jk/screens/tab_two_screen.dart';
import 'package:login_screen_jk/widgets/custom_appBar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<dynamic, dynamic>> screens=[];
  int _selectedPageIndex = 0;
  @override
  void initState() {
    screens=[
      {'page': TabOneScren(), 'title': 'Categories'},
      {'page': QrScreen(), 'title': 'QR Scanner'},
      {'page': TabThreeScreen(), 'title': 'Categories'},
      {'page': TabFourScreen(), 'title': 'QR Scanner'}
    ];
    super.initState();
  }
  void _selectedItem(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#00011f"),
        body: screens[_selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.yellowAccent,
          currentIndex: _selectedPageIndex,
          onTap: _selectedItem,
          type: BottomNavigationBarType.fixed,
          backgroundColor: HexColor("#00011f"),
          items: [
            BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.category),
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.qr_code_scanner),
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.assistant_photo),
                backgroundColor: Theme.of(context).primaryColor),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.shopping_cart_sharp),
                backgroundColor: Theme.of(context).primaryColor),
          ],
        ),
      ),
    );
  }
}
