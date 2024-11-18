// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PartTwoPage extends StatelessWidget {
  const PartTwoPage({super.key});

  static const String content = '''
Part II: Citizenship

Article 5: Citizenship by Birth
If you are born in India, you automatically become a citizen of India.

Article 6: Citizenship for People from Pakistan
1. If your mom or dad was born in India, you are a citizen, even if you were born in another country.
2. If you or your parents moved from Pakistan to India before July 19, 1948, you are a citizen.
3. If you moved after that date, you must register to become a citizen.

Article 7: Losing Citizenship
If you decide to become a citizen of another country, you will lose your Indian citizenship.

Article 8: Citizenship by Residency
If you have lived in India for five years or more, you can apply to become a citizen.

Article 9: The Role of Parliament
The Parliament of India can make laws about how people can become citizens and how citizenship can be taken away.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part II: Citizenship'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main Heading
            Text(
              'Part II: Citizenship',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue, // Highlight the main heading
                  ),
            ),
            const SizedBox(height: 20),

            // Content with highlighted article headings
            _buildArticleText('Article 5: Citizenship by Birth'),
            const SizedBox(height: 8),
            Text(
              'If you are born in India, you automatically become a citizen of India.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 6: Citizenship for People from Pakistan'),
            const SizedBox(height: 8),
            Text(
              '1. If your mom or dad was born in India, you are a citizen, even if you were born in another country.\n'
              '2. If you or your parents moved from Pakistan to India before July 19, 1948, you are a citizen.\n'
              '3. If you moved after that date, you must register to become a citizen.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 7: Losing Citizenship'),
            const SizedBox(height: 8),
            Text(
              'If you decide to become a citizen of another country, you will lose your Indian citizenship.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 8: Citizenship by Residency'),
            const SizedBox(height: 8),
            Text(
              'If you have lived in India for five years or more, you can apply to become a citizen.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 9: The Role of Parliament'),
            const SizedBox(height: 8),
            Text(
              'The Parliament of India can make laws about how people can become citizens and how citizenship can be taken away.',
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
