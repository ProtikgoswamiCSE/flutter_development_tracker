import 'package:flutter/material.dart';

class Task_12 extends StatelessWidget {
  const Task_12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Task_12')),
        backgroundColor: const Color.fromARGB(255, 124, 96, 107),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 55),
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 149, 72, 91),
            borderRadius: BorderRadius.circular(90),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 226, 81, 136).withOpacity(0.9),
                blurRadius: 72.6,
                offset: Offset(6, 6),
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Protik goswami',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
