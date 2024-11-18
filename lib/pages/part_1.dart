// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PartOnePage extends StatelessWidget {
  const PartOnePage({super.key});

  static const String content = '''
The Union and Its Territory

Article 1: India as a Union
India, also called Bharat, is made up of several states and Union territories that form one big country.

Articles 1-2: States and Union Territories
The Constitution lists all the states and Union territories that make up India. Union territories are areas managed directly by the central government.

Article 2: Adding New States
Parliament, the main decision-making group, can add new states to India or merge areas to form new states, based on certain conditions.

Article 3: Changing State Borders
Parliament can change the size, name, or borders of any state, but before doing so, it must follow certain steps, like consulting with state leaders.

Article 4: Details for Changes
Any changes made to the states or Union territories are recorded in the Constitution, so they become official.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part I: The Union and Its Territory'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main Heading
            Text(
              'The Union and Its Territory',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue, // Highlight the main heading
                  ),
            ),
            const SizedBox(height: 20),

            // Content with highlighted article headings
            _buildArticleText('Article 1: India as a Union'),
            const SizedBox(height: 8),
            Text(
              'India, also called Bharat, is made up of several states and Union territories that form one big country.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Articles 1-2: States and Union Territories'),
            const SizedBox(height: 8),
            Text(
              'The Constitution lists all the states and Union territories that make up India. Union territories are areas managed directly by the central government.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 2: Adding New States'),
            const SizedBox(height: 8),
            Text(
              'Parliament, the main decision-making group, can add new states to India or merge areas to form new states, based on certain conditions.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 3: Changing State Borders'),
            const SizedBox(height: 8),
            Text(
              'Parliament can change the size, name, or borders of any state, but before doing so, it must follow certain steps, like consulting with state leaders.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 4: Details for Changes'),
            const SizedBox(height: 8),
            Text(
              'Any changes made to the states or Union territories are recorded in the Constitution, so they become official.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to highlight article headings
  Widget _buildArticleText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Colors.blue, // Color for the article headings
      ),
    );
  }
}
