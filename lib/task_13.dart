import 'package:flutter/material.dart';

class Task_13 extends StatelessWidget {
  const Task_13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 163, 4, 4),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            'https://icon2.cleanpng.com/20240216/oy/transparent-google-logo-colorful-rectangular-logo-featuring-minimalist-1710875585218.webp',
            height: 30,
          ),
        ),
        title: Text(
          'Google',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // I will add functionality if needed
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/salma.jpg'),
              radius: 20,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Task_13',
          style: TextStyle(fontFamily: 'Roboto', fontSize: 30),
        ),
      ),
    );
  }
}
