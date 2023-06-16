import 'package:chatter/view/screens/screens.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      theme: ,
      title: 'Chatter',
      home: HomeScreen(),
    );
  }
}
