import 'package:flutter/material.dart';
import 'package:instagram/screens/detail_market.dart';

// ignore: must_be_immutable
class GridWidget extends StatelessWidget {
  GridWidget({
    Key? key,
    required this.size,
    required this.crossCount,
    required this.beginIndex,
    required this.currentIndex,
  }) : super(key: key);

  final Size size;
  final int crossCount;
  final int beginIndex;
  int currentIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossCount,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          currentIndex = index;
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => DetailMarket(
                    index: index,
                    beginIndex: beginIndex,
                  ),
                ),
              );
            },
            child: Hero(
              tag: index,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://picsum.photos/id/${index + beginIndex}/200',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
