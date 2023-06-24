import 'package:bazaar/seller_info.dart';
import 'package:flutter/material.dart';

import 'Ui/divider.dart';

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
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
      ),
      home: const Scaffold(
          backgroundColor: Color(0xfff1f1f1f1), body: DetailsPage()),
    );
  }
}
