import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: () {
            print('leading');
          },
        ),
        title: Text('The first fluter app'),
      ),
      // body: Container(
      //   child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Expanded(
      //           child: Container(
      //             child: const Text('Hello Widget 1'),
      //             color: Colors.red,
      //           ),
      //         ),
      //         Expanded(
      //           child: Container(
      //             width: 100,
      //             height: 100,
      //             color: Colors.green,
      //           ),
      //         ),
      //         Expanded(
      //           child: Container(
      //             child: const Text(
      //               'Hello Widget 2',
      //               style: TextStyle(fontSize: 20),
      //             ),
      //             color: Colors.yellow,
      //           ),
      //         ),
      //       ]),
      // ),

      body: Container(
        child: Wrap(direction: Axis.horizontal, children: [
          Expanded(
            child: Container(
              child: const Text('Hello Widget 1'),
              color: Colors.red,
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          Container(
            child: const Text(
              'Hello Widget 2',
              style: TextStyle(fontSize: 40),
            ),
            color: Colors.yellow,
          ),
        ]),
      ),
    );
  }
}
