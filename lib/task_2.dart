import 'package:flutter/material.dart';

class Task_2 extends StatefulWidget {
  const Task_2({super.key});

  @override
  State<Task_2> createState() => _Task_2state();
}

class _Task_2state extends State<Task_2> {
  String displayText = 'Press the button below';

  void _updateText() {
    setState(() {
      displayText = 'Button Pressed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Task_2')),
        backgroundColor: const Color.fromARGB(255, 209, 97, 207),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              displayText,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _updateText,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
