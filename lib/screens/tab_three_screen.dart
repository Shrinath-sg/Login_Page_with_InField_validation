import 'dart:math';
import 'package:flutter/material.dart';
import 'package:login_screen_jk/widgets/custom_appBar.dart';
import 'package:login_screen_jk/widgets/list_of_tiles.dart';

class TabThreeScreen extends StatefulWidget {
  @override
  _TabThreeScreenState createState() => _TabThreeScreenState();
}

class _TabThreeScreenState extends State<TabThreeScreen> {
  final names=["Henry Jordan","Kara Cloutier","Carl Johnson","Nathan Holt","Colt Steel","Rojard Richard","Jeff Karlos"];

  var random=Random();

  final numbers=[6];

  bool isToggle=false;

  @override
  Widget build(BuildContext context) {
    if(numbers.isNotEmpty){
      numbers.add(random.nextInt(150000));
    }
    print(numbers);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      CustomAppBar(),
      Row(children: [
        Text("Ranking",style: TextStyle(color: Colors.white)),
        Container(
         // color: Colors.yellowAccent,
         // width: width*0.0,
          child: Row(children: [
            Text("Monthly",style: TextStyle(color: Colors.white),),
            Switch(value: isToggle, onChanged: (val){
              setState(() {
                isToggle=!isToggle;
              });
            },inactiveThumbColor: Colors.lightBlue,activeColor: Colors.green,inactiveTrackColor: Colors.lightBlue.shade100,),
            Text("Yearly",style: TextStyle(color: Colors.white))
          ],),
        )
      ],
        mainAxisAlignment: MainAxisAlignment.spaceAround,),
      ListOfTiles(),
    ]);
  }
}
