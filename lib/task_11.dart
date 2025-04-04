import 'package:flutter/material.dart';

class Task_11 extends StatelessWidget {
  const Task_11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Task_11')),
        backgroundColor: const Color.fromARGB(255, 130, 174, 206),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              Image.asset('assets/cat.jpg'),
              SizedBox(height: 26),
              Text("Cutie Pie", style: TextStyle(fontSize: 26)),
            ],
          ),
        ),
      ),
    );
  }
}
