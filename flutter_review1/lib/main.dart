import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(title: const Text("Flutter Demo")),
          body: const SingleChildScrollView(
            child: Column(
              children: [
                TitleSection(
                    name: "Oeschinen Lake Campground",
                    location: "Kandersteg, Switzerland")
              ],
            ),
          ),
        ));
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.name, required this.location});

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
            Text(
              location,
              style: TextStyle(color: Colors.grey[500]),
            )
          ],
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text("41")
      ],
    );
  }
}
