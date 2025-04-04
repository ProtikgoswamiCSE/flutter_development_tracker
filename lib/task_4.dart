import 'package:flutter/material.dart';

class Task_4 extends StatelessWidget {
  const Task_4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task_4'),
        backgroundColor: const Color.fromARGB(255, 44, 165, 155),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Protik goswami'),
            const SizedBox(height: 20.0),

            Text(
              'Protik goswami',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 45, 5, 11),
              ),
            ),
            const SizedBox(height: 30.0),

            Text(
              'Protik goswami',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: const Color.fromARGB(255, 21, 63, 23),
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 25.0),

            Text(
              'Daffodil International University',
              style: TextStyle(
                fontSize: 20.0,
                decoration: TextDecoration.underline,
                decorationColor: const Color.fromARGB(255, 53, 21, 121),
                decorationThickness: 2.0,
                color: const Color.fromARGB(255, 7, 77, 134),
              ),
            ),
            const SizedBox(height: 24.0),

            RichText(
              text: TextSpan(
                // style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Daffodil International University\n\n ',
                    style: TextStyle(
                      fontSize: 23.0,
                      color: const Color.fromARGB(255, 224, 18, 145),
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  TextSpan(
                    text: 'Mobile Application Design Lab ',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: const Color.fromARGB(255, 22, 153, 57),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  TextSpan(
                    text: 'CSE-414',
                    style: TextStyle(
                      fontSize: 21.0,
                      color: const Color.fromARGB(255, 183, 97, 161),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),

            Text(
              'Mezbaul Islam Zion sir',
              style: TextStyle(
                fontSize: 20.0,
                color: const Color.fromARGB(255, 27, 2, 2),
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: const Color.fromARGB(255, 199, 152, 152),
                    offset: Offset(3.0, 3.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
