import 'package:counting_click/extension/size_adjust.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int result = 0;
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  calculating(String operator) {
    switch (operator) {
      case '+':
        result = (int.tryParse(number1.text) ?? 0) +
            (int.tryParse(number2.text) ?? 0);
      case '-':
        result = (int.tryParse(number1.text) ?? 0) -
            (int.tryParse(number2.text) ?? 0);
      case '*':
        result = (int.tryParse(number1.text) ?? 0) *
            (int.tryParse(number2.text) ?? 0);
      case '/':
        result = (int.tryParse(number1.text) ?? 0) ~/
            (int.tryParse(number2.text) ?? 0);
      case '%':
        result = (int.tryParse(number1.text) ?? 0) %
            (int.tryParse(number2.text) ?? 0);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 100,
                width: 100,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: number1,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.pinkAccent),
                )),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
                height: 100,
                width: 100,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: number2,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.pinkAccent),
                ))
          ],
        ),
        Text('The Result is $result'),
        paddingHeight(8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  calculating('+');
                },
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                child: const Text(
                  '+',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            paddingWidth(8.0),
            ElevatedButton(
                onPressed: () {
                  calculating('-');
                },
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                child: const Text(
                  '-',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            paddingWidth(8.0),
            ElevatedButton(
                onPressed: () {
                  calculating('*');
                },
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                child: const Text(
                  '*',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            paddingWidth(8.0),
            ElevatedButton(
                onPressed: () {
                  calculating('/');
                },
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                child: const Text(
                  '/',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            paddingWidth(8.0),
            ElevatedButton(
              onPressed: () {
                calculating('%');
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
              child: const Text(
                '%',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ],
    );
  }
}
