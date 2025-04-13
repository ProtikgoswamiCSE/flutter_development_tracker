import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
// ignore: depend_on_referenced_packages
import 'package:timezone/data/latest_all.dart' as tz;
// ignore: depend_on_referenced_packages
import 'package:timezone/timezone.dart' as tz;
// ignore: depend_on_referenced_packages
import 'package:animated_text_kit/animated_text_kit.dart';

// ignore: camel_case_types
class Task_15 extends StatefulWidget {
  const Task_15({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Task_15State createState() => _Task_15State();
}

// ignore: camel_case_types
class _Task_15State extends State<Task_15> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  @override
  void initState() {
    super.initState();
    tz.initializeTimeZones();
    _setCurrentDhakaTime();
  }

  void _setCurrentDhakaTime() {
    tz.Location dhaka = tz.getLocation('Asia/Dhaka');
    tz.TZDateTime nowInDhaka = tz.TZDateTime.now(dhaka);
    setState(() {
      selectedDate = nowInDhaka;
      selectedTime = TimeOfDay(
        hour: nowInDhaka.hour,
        minute: nowInDhaka.minute,
      );
    });
  }

  Future<void> _pickDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _pickTime(BuildContext context) async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 254, 254),
      appBar: AppBar(
        title: Center(
          child: Text('Task_15', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        backgroundColor: const Color.fromARGB(255, 144, 49, 207),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCard(
              icon: Icons.calendar_today,
              label: "Selected Date",
              value:
                  selectedDate != null
                      ? DateFormat('yyyy-MM-dd').format(selectedDate!)
                      : "No date selected",
              onPressed: () => _pickDate(context),
            ),
            SizedBox(height: 20),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                // ignore: deprecated_member_use
                color: const Color.fromARGB(255, 174, 58, 130).withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Center(
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [FadeAnimatedText("Time and Date Picker")],
                    repeatForever: true,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            _buildCard(
              icon: Icons.access_time,
              label: "Selected Time",
              value:
                  selectedTime != null
                      ? selectedTime!.format(context)
                      : "No time selected",
              onPressed: () => _pickTime(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required IconData icon,
    required String label,
    required String value,
    required VoidCallback onPressed,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.teal, size: 30),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      value,
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.edit, color: Colors.teal),
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
