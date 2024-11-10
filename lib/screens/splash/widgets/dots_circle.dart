import 'package:flutter/material.dart';

class DotCircleWidget extends StatelessWidget {
  final double size;
  final double padding;
  final List<int> dotsPerRow = [2, 6, 8, 8, 10, 10, 8, 8, 6, 2];

  DotCircleWidget({super.key, required this.size, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: dotsPerRow.map((dotsInRow) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(dotsInRow, (index) {
              return Padding(
                padding: EdgeInsets.all(padding),
                child: CircleAvatar(
                  radius: size,
                  backgroundColor: const Color.fromARGB(97, 255, 255, 255),
                ),
              );
            }),
          );
        }).toList(),
      ),
    );
  }
}
