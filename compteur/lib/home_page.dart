import 'package:compteur/buttons.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var number = 1;
  int _counter = 0;

  final List<String> button = [
    '1',
    '2',
    '3',
    '-',
    '4',
    '5',
    '6',
    '+',
  ];

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // void _decrementCounter() {
  //   setState(() {
  //     _counter--;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        backgroundColor: Colors.grey[900],
      ),
      backgroundColor: Colors.grey[300],
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: GridView.builder(
                    itemCount: button.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 3) {
                        return Button(
                          buttonTapped: () {
                            setState(() {
                              _counter -= number;
                            });
                          },
                          color: Colors.grey[900],
                          textColor: Colors.white,
                          buttonText: button[index],
                        );
                      } else if (index == 7) {
                        return Button(
                          buttonTapped: () {
                            setState(() {
                              _counter += number;
                            });
                          },
                          color: Colors.grey[800],
                          textColor: Colors.white,
                          buttonText: button[index],
                        );
                      } else {
                        return Button(
                          buttonTapped: () {
                            setState(() {
                              number = int.parse(button[index]);
                            });
                          },
                          color: Colors.grey[600],
                          textColor: Colors.white,
                          buttonText: button[index],
                        );
                      }
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // bool isOperator(String operator) {
  //   if (operator == '-' || operator == '+') {
  //     return true;
  //   }
  //   return false;
  // }
}
