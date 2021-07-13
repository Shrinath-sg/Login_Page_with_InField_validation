import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_screen_jk/widgets/logo_container.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Card(
        color: HexColor("#1c1b3a"),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            height: height * 0.12,
            width: width,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/eth.png"),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Text(
                    "DavidW",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    width: width * 0.30,
                  ),
                  Column(
                    children: [
                      Text(
                        "POINTS",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      Text(
                        '40',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  LogoContainer(50, 50, ""),
                ],
              ),
            ),
          ),
        ));
  }
}
