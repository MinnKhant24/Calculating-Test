import 'package:counting_click/extension/constants.dart';
import 'package:flutter/material.dart';

class CalculatorUi extends StatefulWidget {
  const CalculatorUi({super.key});

  @override
  State<CalculatorUi> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CalculatorUi> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: const Color.fromARGB(255, 43, 48, 50),
            child: const Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '0',
                style: TextStyle(color: Colors.white, fontSize: 100),
              ),
            ),
          ),
        ),
        const RowOne(),
        const RowTwo(),
        const RowThree(),
        const RowFour(),
        const RowFive(),
      ],
    );
  }
}

class RowFive extends StatelessWidget {
  const RowFive({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: Colors.grey,
                    side: const BorderSide(style: BorderStyle.solid),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero))),
                child: const Text(
                  '0',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ))),
        Expanded(
            flex: 1,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: Colors.grey,
                    side: const BorderSide(style: BorderStyle.solid),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero))),
                child: const Text(
                  '.',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ))),
        Expanded(
            flex: 1,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    backgroundColor: Colors.grey,
                    side: const BorderSide(style: BorderStyle.solid),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero))),
                child: const Text(
                  '=',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )))
        // getButton('0'),
        // getButton('.'),
        // getButton('=', color: Colors.amber)
      ],
    );
  }
}

class RowOne extends StatelessWidget {
  const RowOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        getButton('AC'),
        getButton('+/-'),
        getButton('%'),
        getButton('/', color: Colors.amber)
      ],
    );
  }
}

class RowTwo extends StatelessWidget {
  const RowTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        getButton('7'),
        getButton('8'),
        getButton('9'),
        getButton('*', color: Colors.amber)
      ],
    );
  }
}

class RowThree extends StatelessWidget {
  const RowThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        getButton('4'),
        getButton('5'),
        getButton('6'),
        getButton('-', color: Colors.amber)
      ],
    );
  }
}

class RowFour extends StatelessWidget {
  const RowFour({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        getButton('1'),
        getButton('2'),
        getButton('3'),
        getButton('+', color: Colors.amber)
      ],
    );
  }
}
