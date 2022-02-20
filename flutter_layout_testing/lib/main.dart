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
    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          )
        ],
      );
    }

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE')
      ],
    );

    Widget textSection = const Padding(
        padding: EdgeInsets.all(32),
        child: Text(
          'My current position is Mobile Applications Developer at Retail Integration Ltd. Located in Dublin. Retail Integration is one of Irelands leading EPOS providers. As Mobile Applications Developer I create, deploy, and maintain a series of business-to-business applications, used by our clients daily to ease their everyday tasks. While working here, I have created and maintained applications in several frameworks, including Unity, Xamarin Forms, and native Android through Android Studio.',
          softWrap: true,
        ));

    return MaterialApp(
        title: 'Flutter Layout Testing',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Layout Tester'),
          ),
          body: Column(children: [titleSection, buttonSection, textSection]),
        ));
  }
}
