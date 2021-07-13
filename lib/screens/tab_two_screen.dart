import 'package:flutter/material.dart';
import 'package:login_screen_jk/widgets/custom_appBar.dart';
import 'package:qr_flutter/qr_flutter.dart';
class QrScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
       // mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("DIGITAL MEMBER CARD",style: TextStyle(color: Colors.white),),
          ),
          SizedBox(height: height*0.20,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
              border: Border.all(color: Colors.grey[350],width: 5)
            ),
         // color: Colors.white,
          height: height*0.25,
          width: width*0.50,
          child: QrImage(
            data: "1234567890",
            version: QrVersions.auto,
            size: 200.0,
          ),
        ),
        ]
      ),
    );
  }
}
