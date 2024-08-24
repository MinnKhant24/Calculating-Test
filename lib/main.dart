import 'package:counting_click/screen/calculating.dart';
import 'package:counting_click/screen/color_button.dart';
import 'package:counting_click/screen/calculator_ui.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Material App Bar',
              style: TextStyle(fontFamily: 'elep'),
            ),
            backgroundColor: Colors.blue,
          ),
          body: CalculatorUi()),
    );
  }
}

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int count = 0;
  late TextEditingController textEditingController;

  void clickMe() {
    ++count;
    print(count);
    setState(() {});
  }

  void myOnChange(data) {
    print(data);
  }

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            // onSubmitted: myOnChange,
            // onChanged: (data) {},
            controller: textEditingController,
          ),
          Text(textEditingController.text),
          ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text(
                'Click me',
                style: TextStyle(fontFamily: 'elep'),
              )),
        ],
      ),
    );
  }
}


// Container(
//               margin: const EdgeInsets.all(10.0),
//               height: 250,
//               width: 250,
//               // color: Colors.amber,
//               child: const TextField(
//                 autofocus: false,
//                 textInputAction: TextInputAction.next,
//                 textAlignVertical: TextAlignVertical.center,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: 'Enter your email',
//                     helperText: 'personal email',
//                     errorText: 'THis is error',
//                     labelText: 'Label'),
//               ))
