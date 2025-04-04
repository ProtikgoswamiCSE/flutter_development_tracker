import 'package:flutter/material.dart';

void main() {
  runApp(Task_17());
}

class Task_17 extends StatefulWidget {
  const Task_17({super.key});

  @override
  _Task_17State createState() => _Task_17State();
}

class _Task_17State extends State<Task_17> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Task_17',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: isDarkMode ? Colors.black : Colors.purple,
          elevation: 4,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isDarkMode ? Icons.nightlight_round : Icons.wb_sunny,
                size: 100,
                color: isDarkMode ? Colors.amber : Colors.orange,
              ),
              SizedBox(height: 20),
              Text(
                isDarkMode ? 'Dark Mode ' : 'Light Mode ',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isDarkMode = !isDarkMode;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 400),
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: isDarkMode ? Colors.black : Colors.purple,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8,
                        spreadRadius: 2,
                        offset: Offset(2, 4),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      AnimatedPositioned(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        left: isDarkMode ? 70 : 5,
                        right: isDarkMode ? 5 : 70,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: isDarkMode ? Colors.grey[900] : Colors.grey[100],
      ),
    );
  }
}