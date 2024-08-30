import 'package:counting_click/extension/constants.dart';
import 'package:flutter/material.dart';

class MyCalculator extends StatelessWidget {
  const MyCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: 200,
            color: const Color.fromARGB(255, 53, 49, 49),
            child: const Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '0',
                style: TextStyle(fontSize: 100),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(style: BorderStyle.solid),
                  color: Colors.grey,
                ),
                padding: EdgeInsets.all(2),
                child: const Center(
                  child: Text(
                    'AC',
                    style: TextStyle(fontSize: 45, color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(style: BorderStyle.solid),
                  color: Colors.grey,
                ),
                padding: EdgeInsets.all(2),
                child: const Center(
                  child: Text(
                    '+/-',
                    style: TextStyle(fontSize: 45, color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(style: BorderStyle.solid),
                  color: Colors.grey,
                ),
                padding: EdgeInsets.all(2),
                child: const Center(
                  child: Text(
                    '%',
                    style: TextStyle(fontSize: 45, color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(style: BorderStyle.solid),
                  color: Colors.orange,
                ),
                padding: EdgeInsets.all(2),
                child: const Center(
                  child: Text(
                    '/',
                    style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            getContainer('7'),
            getContainer('8'),
            getContainer('9'),
            getContainer('*', color: Colors.orange)
          ],
        ),
        Row(
          children: [
            getContainer('4'),
            getContainer('5'),
            getContainer('6'),
            getContainer('-', color: Colors.orange)
          ],
        ),
        Row(
          children: [
            getContainer('1'),
            getContainer('2'),
            getContainer('3'),
            getContainer('+', color: Colors.orange)
          ],
        ),
        Row(children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(style: BorderStyle.solid),
                color: Colors.grey,
              ),
              padding: EdgeInsets.all(2),
              child: const Center(
                child: Text(
                  '0',
                  style: TextStyle(fontSize: 45, color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(style: BorderStyle.solid),
                color: Colors.grey,
              ),
              padding: EdgeInsets.all(2),
              child: const Center(
                child: Text(
                  '.',
                  style: TextStyle(fontSize: 45, color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(style: BorderStyle.solid),
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(2),
              child: const Center(
                child: Text(
                  '=',
                  style: TextStyle(fontSize: 45, color: Colors.white),
                ),
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
