import 'package:counting_click/extension/constants.dart';
import 'package:flutter/material.dart';

class CalculatorTest extends StatefulWidget {
  const CalculatorTest({
    super.key,
  });

  @override
  State<CalculatorTest> createState() => _BodyState();
}

class _BodyState extends State<CalculatorTest> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: const Color.fromARGB(255, 43, 48, 50),
          child: const Align(
            alignment: Alignment.bottomRight,
            child: Text(
              '0',
              style: TextStyle(color: Colors.white, fontSize: 100),
            ),
          ),
        ),
        Wrap(
          children: [
            getSizedBox('AC'),
            getSizedBox('+/-'),
            getSizedBox('%'),
            getSizedBox('/', Colors.orangeAccent),
            getSizedBox('7'),
            getSizedBox('8'),
            getSizedBox('9'),
            getSizedBox('*', Colors.orangeAccent),
            getSizedBox('4'),
            getSizedBox('5'),
            getSizedBox('6'),
            getSizedBox('-', Colors.orangeAccent),
            getSizedBox('1'),
            getSizedBox('2'),
            getSizedBox('3'),
            getSizedBox('+', Colors.orangeAccent),
            SizedBox(
              height: 80,
              width: 205,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(style: BorderStyle.solid),
                      backgroundColor: Colors.grey,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                  child: const Text('0')),
            ),
            getSizedBox('.'),
            getSizedBox('=', Colors.orangeAccent)
          ],
        ),
      ],
    );
  }
}
