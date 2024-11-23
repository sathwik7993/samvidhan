// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PartSevenPage extends StatelessWidget {
  const PartSevenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part VII - States in the First Schedule'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'States in the First Schedule',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Highlighted color
              ),
            ),
            SizedBox(height: 10),
            Text(
              'This part originally explained the rules for certain states listed in a schedule of the Constitution. However, it has been removed (or "omitted") as it is no longer needed after changes were made to the Constitution.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'So, for now, there is no active content in Part VII.',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
