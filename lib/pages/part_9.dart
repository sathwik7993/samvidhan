import 'package:flutter/material.dart';

class PartNinePage extends StatelessWidget {
  const PartNinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part IX - The Panchayats'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'The Panchayats',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Highlighted color for main heading
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This part explains how villages are managed through Panchayats, which are like small governments.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildArticle(
              'Article 243A: Village Meetings (Gram Sabha)',
              'Every village has a group called the Gram Sabha. It includes all adults in the village, and they discuss important matters.',
            ),
            _buildArticle(
              'Article 243B: Panchayats',
              'Panchayats are groups that help run villages. They make decisions about roads, water, schools, and more.',
            ),
            _buildArticle(
              'Article 243C: Who’s in the Panchayat?',
              'Panchayats have members chosen by the people in the village.',
            ),
            _buildArticle(
              'Article 243D: Reserved Seats',
              'Some seats in Panchayats are kept for women and people from Scheduled Castes and Scheduled Tribes to make sure everyone is included.',
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
