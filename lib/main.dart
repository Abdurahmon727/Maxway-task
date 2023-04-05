import 'package:flutter/material.dart';

import 'features/home/presentation/home_page.dart';

void main() {
  runApp(const MaxWay());
}

class MaxWay extends StatelessWidget {
  const MaxWay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaxWay',
      theme: ThemeData(
        fontFamily: 'Inter',
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
