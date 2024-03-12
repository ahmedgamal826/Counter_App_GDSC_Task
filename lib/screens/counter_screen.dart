import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Counter Screen',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                count--;
              });
            },
            icon: Icon(
              Icons.remove,
              size: 40,
            ),
          ),
          Text(
            '$count',
            style: TextStyle(fontSize: 50),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            icon: Icon(
              Icons.add,
              size: 40,
            ),
          ),
        ],
      )),
    );
  }
}
