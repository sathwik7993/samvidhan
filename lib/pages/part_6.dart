import 'package:flutter/material.dart';

class PartSixPage extends StatelessWidget {
  const PartSixPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part VI - The States'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'The States',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Highlighted color
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This part talks about how each state in India is governed.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildArticle(
              'Article 153: Governors of States',
              'Each state has a Governor. They are like the President but only for their state.',
            ),
            _buildArticle(
              'Article 154: Governor’s Powers',
              'The Governor helps make sure the state runs smoothly and works with the Chief Minister.',
            ),
            _buildArticle(
              'Article 155: Choosing the Governor',
              'The President of India chooses the Governor.',
            ),
            _buildArticle(
              'Article 156: Governor’s Term',
              'The Governor works for five years but can leave earlier if the President decides so.',
            ),
            _buildArticle(
              'Article 161: Governor’s Powers',
              'The Governor can forgive people who have committed certain crimes in the state.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildArticle(String articleTitle, String articleContent) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            articleTitle,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue, // Highlighted color for article title
            ),
          ),
          const SizedBox(height: 5),
          Text(
            articleContent,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
