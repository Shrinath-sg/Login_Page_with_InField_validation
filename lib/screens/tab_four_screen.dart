import 'package:flutter/material.dart';
import 'package:login_screen_jk/widgets/custom_appBar.dart';
import 'package:login_screen_jk/widgets/staggered_image_view.dart';
class TabFourScreen extends StatefulWidget {
  @override
  _TabFourScreenState createState() => _TabFourScreenState();
}

class _TabFourScreenState extends State<TabFourScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        Padding(padding: EdgeInsets.all(20.0),child: Text("SHOP",style: TextStyle(color: Colors.white))),
        StaggeredGridView(),
      ],
    );
  }
}
