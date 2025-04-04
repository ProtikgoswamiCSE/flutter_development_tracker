import 'package:flutter/material.dart';
import 'theme_color.dart';

class Task_1 extends StatelessWidget {
  const Task_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Task_1")),
        backgroundColor: AppColors.lightText,
      ),
      body: Center(
        child: Text(
          "Hello World",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 40,
            color: AppColors.darkText,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
