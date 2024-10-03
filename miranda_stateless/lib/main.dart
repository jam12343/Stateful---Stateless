import 'package:flutter/material.dart';

class Counter extends StatefulWidget {

  const Counter({super.key});
 
  @override
  State<Counter> createState() => _CounterState();
}
class _CounterState extends State<Counter> {

  String _counter = "1";

  void _updateMessage() {
    setState(() {
      _counter = "2";
    });
    
  }

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: _updateMessage,
          child: const Text('Increment'),
        ),
        const SizedBox(width: 16),
        Text('Count: $_counter'),
      ],
    );
  }
}



void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      ),
    ),
  );
}