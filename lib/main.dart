import 'package:counting_click/constants/assets.dart';
import 'package:counting_click/screen/calculator_test.dart';
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
          body: MyCalculator()),
    );
  }
}

class BodyImport extends StatelessWidget {
  const BodyImport({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(
                Assets.assetsImage,
                width: 10,
                height: 10,
                repeat: ImageRepeat.repeat,
              )),
        ),
        ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Hey..!')));
            },
            child: const Text('Showing Snack Bar'))
      ],
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

class ListTesting extends StatelessWidget {
  const ListTesting({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      //physics: ScrollPhysics(),
      children: [
        Container(
          height: 100,
          color: Colors.green,
        ),
        Container(
          height: 100,
          color: Colors.red,
        ),
        SizedBox(
          height: 150,
          child: ListView(
            shrinkWrap: true,
            //physics: ScrollPhysics(),
            children: const [
              Card(
                elevation: 10,
                child: ListTile(
                  leading: Icon(Icons.abc),
                  title: Text('This is title'),
                  subtitle: Text('This is subtitle'),
                  trailing: Icon(Icons.delete),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc),
                  title: Text('This is title'),
                  subtitle: Text('This is subtitle'),
                  trailing: Icon(Icons.delete),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          color: Colors.green,
        ),
        Container(
          height: 100,
          color: Colors.red,
        ),
        Container(
          height: 100,
          color: Colors.green,
        ),
        Container(
          height: 100,
          color: Colors.red,
        ),
        Container(
          height: 100,
          color: Colors.green,
        ),
      ],
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
