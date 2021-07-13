
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ListOfTiles extends StatelessWidget {
  final names = [
    "Henry Jordan",
    "Kara Cloutier",
    "Carl Johnson",
    "Nathan Holt",
    "Colt Steel",
    "Rojard Richard",
    "Jeff Karlos",
    "Jimmy jackson",
    "John Wick"
  ];
  final numbers = [
    '663232',
    '763232',
    '903232',
    '163232',
    '363231',
    '663262',
    '263452',
    '872634',
    '329764'
  ];
  bool isNumbersGenerated = false;

  @override
  @override
  Widget build(BuildContext context) {
    print(numbers);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Expanded(
      child: SizedBox(
        height: height,
        child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              return Column(children: [
                Material(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: HexColor("#00011f"),
                  borderOnForeground: true,
                  child: ListTile(
                    leading: Text(
                      "${index + 1}",
                      style: TextStyle(color: Colors.white),
                    ),
                    title: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          // backgroundImage: NetworkImage(imageUrls[index]),
                          //AssetImage("assets/images/eth.png"),
                          child: Text(names[index][0].toString()),
                          backgroundColor: Colors.purple,
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              names[index],
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                                Text(
                                  "${numbers[index]}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                                // SizedBox(
                                //   width: width * 0.10,
                                // ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    trailing: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    thickness: 1,
                    color: HexColor("#1c1b3a"),
                  ),
                )
              ]);
            }),
      ),
    );
  }
}
