import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CarouselDemo extends StatefulWidget {
  CarouselDemo() : super();

  final String title = "Carousel Demo";

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<CarouselDemo> {
  //
  CarouselController buttonCarouselController = CarouselController();
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    //'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          carouselSlider = CarouselSlider(
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              pauseAutoPlayOnTouch: true,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              aspectRatio: 2.0,
              initialPage: 2,
              height: height * 0.60,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              scrollDirection: Axis.horizontal,
            ),
            items: imgList.map((imgUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: HexColor("#1c1b3a"),
                    child: Container(
                      //margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                        color: Colors.transparent,
                      ),
                      child: FittedBox(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30)),
                                child: Image.network(
                                  imgUrl,
                                  fit: BoxFit.fitWidth,
                                  loadingBuilder: (BuildContext context,
                                      Widget child,
                                      ImageChunkEvent loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return Center(
                                      child: CircularProgressIndicator(
                                        value: loadingProgress
                                                    .expectedTotalBytes !=
                                                null
                                            ? loadingProgress
                                                    .cumulativeBytesLoaded /
                                                loadingProgress
                                                    .expectedTotalBytes
                                            : null,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "Nike Jordan",
                                        style: TextStyle(
                                            fontSize: 38,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "It is a long established fact that a reader will  be distracted                     ",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.10,
                                    )
                                  ],
                                ),
                              )
                            ]),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: height * 0.01,
          ),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: map<Widget>(imgList, (index, url) {
          //     return Container(
          //       width: 10.0,
          //       height: 10.0,
          //       margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: _current == index ? Colors.redAccent : Colors.green,
          //       ),
          //     );
          //   }),
          // ),
        ],
      ),
    );
  }

// goToPrevious() {
//   carouselSlider.options.autoPlayAnimationDuration(
//       duration: Duration(milliseconds: 300), curve: Curves.ease);
// }
//
// goToNext() {
//   carouselSlider.nextPage(
//       duration: Duration(milliseconds: 300), curve: Curves.decelerate);
// }
}
