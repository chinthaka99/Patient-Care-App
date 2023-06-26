import 'package:flutter/material.dart';

import 'header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.teal)),
      home: Intellitrend(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Intellitrend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text("Intellitrend"),
            leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
            centerTitle: true,
          ),
          Header(),
        ],
      ),
    );
  }
}
