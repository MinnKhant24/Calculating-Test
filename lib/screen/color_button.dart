import 'dart:math';

import 'package:counting_click/extension/size_adjust.dart';
import 'package:flutter/material.dart';

class MyColor extends StatefulWidget {
  const MyColor({super.key});

  @override
  State<MyColor> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyColor> {
  Random random = Random();
  int randomNum = 0;
  List<Color> colorList = [
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.black,
    Colors.purple
  ];

  Color? colorGreen;

  void randomColor() {
    randomNum = random.nextInt(6);
    colorGreen = colorList[randomNum];
    // switch (randomNum) {
    //   case 0:
    //     colorGreen = Colors.yellow;
    //   case 1:
    //     colorGreen = Colors.green;
    //   case 2:
    //     colorGreen = Colors.red;
    //   case 3:
    //     colorGreen = Colors.blue;
    //   case 4:
    //     colorGreen = Colors.black;
    //   case 5:
    //     colorGreen = Colors.purple;
    // }
  }

  void serialColor() {
    if (randomNum < 5) {
      ++randomNum;
      colorGreen = colorList[randomNum];
    } else {
      randomNum = 0;
      colorGreen = colorList[randomNum];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(height: 200, width: 200, color: colorGreen),
        ),
        paddingHeight(8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                randomColor();
                setState(() {});
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
              child: const Text('Random'),
            ),
            paddingWidth(20.0),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    serialColor();
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                child: const Text('Serial'))
          ],
        )
      ],
    );
  }
}
