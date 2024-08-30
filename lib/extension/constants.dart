import 'package:flutter/material.dart';

Widget getSizedBox(String sign, [Color color = Colors.grey]) {
  return SizedBox(
    height: 80,
    width: 102.5,
    child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            side: const BorderSide(style: BorderStyle.solid),
            backgroundColor: color,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero))),
        child: Text(
          sign,
          style: const TextStyle(fontSize: 40, color: Colors.white),
        )),
  );
}

Widget getButton(String operator, {Color color = Colors.grey}) {
  return Expanded(
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              backgroundColor: color,
              side: const BorderSide(style: BorderStyle.solid),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero))),
          child: Text(
            operator,
            style: const TextStyle(fontSize: 30, color: Colors.white),
          )));
}

Widget getContainer(String character, {Color color = Colors.grey}) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
          border: Border.all(style: BorderStyle.solid), color: color),
      padding: const EdgeInsets.all(2),
      child: Center(
        child: Text(
          character,
          style: const TextStyle(fontSize: 45, color: Colors.white),
        ),
      ),
    ),
  );
}
