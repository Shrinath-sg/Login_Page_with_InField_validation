import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
//   final String id;
//   final String title;
//
//   // final String description;
//   // final double price;
  final String imageUrl;

//
// // bool isFavorite;
  GridItem(
      this.imageUrl,
      );

  @override
  Widget build(BuildContext context) {
    print("isExcecuted........?");
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {},
        child: GridTile(
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
