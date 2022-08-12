import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  convertFormat(String value) {
    var formatPattern = NumberFormat('###,###,###');
    return formatPattern.format(double.parse(value)).toString();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Separate'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '200000',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                convertFormat('200000'),
                style: const TextStyle(fontSize: 25),
              ),
              Text(
                convertFormat('20000000000000'),
                style: const TextStyle(fontSize: 25),
              ),Text(
                convertFormat('200'),
                style: const TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
