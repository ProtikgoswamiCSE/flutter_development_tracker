import 'package:flutter/material.dart';

class Task_14 extends StatelessWidget {
  const Task_14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Task_14')),
        backgroundColor: const Color.fromARGB(255, 178, 114, 183),
      ),
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(index.toString()),
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Icon(Icons.delete, color: const Color.fromARGB(255, 249, 248, 248)),
            ),
            secondaryBackground: Container(
              color: const Color.fromARGB(255, 12, 130, 50),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.edit, color: const Color.fromARGB(255, 242, 236, 236)),
            ),
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Item $index deleted')),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Edit option for item $index')),
                );
              }
            },
            child: ListTile(
              title: Text('Item $index'),
              subtitle: Text('Swipe left to modify, right to remove.'),
            ),
          );
        },
      ),
    );
  }
}