import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
              print("ok");
            },
          ),
          title: Text('The first fluter app'),
        ),
        body: Center(
            // child: Text(
            //   'This is a Lab2',
            //   overflow: TextOverflow.fade,
            //   maxLines: 1,
            //   style: TextStyle(
            //     fontSize: 32,
            //     fontWeight: FontWeight.bold,
            //     color: Colors.red,
            //     // backgroundColor: Colors.green,
            //   ),
            // ),

            // child: Image.network(
            //     'https://clipart-best.com/img/mario/mario-clip-art-5.png'),

            // child: TextButton(
            //   child: Text('Click me'),
            //   onPressed: () {
            //     print("click me");
            //   },
            // ),

            // child: ElevatedButton.icon(
            //   onPressed: () {
            //     print('ok button');
            //   },
            //   icon: Icon(Icons.ac_unit_outlined),
            //   label: Text('Click me button'),
            // ),

            child: Text.rich(
          TextSpan(text: 'Hi', children: [
            TextSpan(
                text: " Lộc, ",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
            TextSpan(
              text: 'Ok',
            ),
          ]),
          style: TextStyle(color: Colors.blue),
        )));
  }
}
