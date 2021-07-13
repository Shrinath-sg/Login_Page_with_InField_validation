import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_screen_jk/widgets/carousel_slider.dart';
import 'package:login_screen_jk/widgets/custom_appBar.dart';
class TabOneScren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
        child: Container(
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomAppBar(),
             // SizedBox(height: height*0.02,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("NEWS",style: TextStyle(color: Colors.white),),
              ),
              CarouselDemo(),
            ],
          ),
        ),
    );
  }
}
