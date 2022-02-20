import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Layout Testing',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Another Spot of Text here',
              style: TextStyle(color: Colors.red[500]),
            )
          ],
        )),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41'),
      ]),
    );

    return MaterialApp(
        title: 'Flutter Layout Testing',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Layout Tester'),
          ),
          body: Column(children: [titleSection]),
        ));
  }
}
