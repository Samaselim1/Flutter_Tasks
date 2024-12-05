import 'package:flutter/material.dart';
import '/View/school_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'know our school',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SchoolInfo(),
    );
  }
}
