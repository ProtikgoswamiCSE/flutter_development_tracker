import 'package:flutter/material.dart';

class Task_3 extends StatelessWidget {
  const Task_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 141, 240, 185),
        title: const Center(child: Text('Task_3')),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return buildListItem(index + 1);
        },
      ),
    );
  }

  Widget buildListItem(int index) {
    return Container(
      width: double.infinity,
      color:
          index.isOdd
              ? const Color.fromARGB(0, 224, 6, 93)
              : const Color.fromARGB(255, 149, 206, 58),
      padding: const EdgeInsets.all(20),
      child: Text(
        'List Item $index',
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 18,
          color: index.isOdd ? Colors.black : Colors.white,
          fontWeight: index.isOdd ? FontWeight.normal : FontWeight.bold,
        ),
      ),
    );
  }
}
