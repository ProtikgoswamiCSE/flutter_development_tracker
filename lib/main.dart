import 'package:flutter/material.dart';
import 'package:flutter_practice/task_19.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Roboto'),

      //home: const Task_1(),
      //home: const Task_2(),
      //home: const Task_3(),
      //home: const Task_4(),
      //home: const Task_5(),
      //home: const Task_6(),
      //home: const Task_7(),
      //home: const Task_8(),
      //home: const Task_9(),
      //home: const Task_10(),
      //home: const Task_11(),
      //home: const Task_12(),
      //home: const Task_13(),
      //home: const Task_14(),
      //home: const Task_15(),
      //home: const Task_16(),
      //home: const Task_17(),
      //home: const Task_18(),
      home: const Task_19(),
    );
  }
}
