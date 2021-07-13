import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_screen_jk/widgets/logo_container.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        color: HexColor("#00011f"),
        child: Center(
          child: LogoContainer(200,200,"LIFEPOINTS"),
        ),
      ),
    );
  }
}
