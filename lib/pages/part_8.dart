import 'package:flutter/material.dart';

class PartEightPage extends StatelessWidget {
  const PartEightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part VIII - The Union Territories'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'The Union Territories',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Highlighted color for main heading
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This part explains how Union Territories are managed. Union Territories are special areas in India that are directly controlled by the central government. They are not like states, which have their own governments.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildArticle(
              'Article 239: Administration of Union Territories',
              'The President of India chooses a person called the Administrator (or Lieutenant Governor) to manage Union Territories.',
            ),
            _buildArticle(
              'Article 239A: Local Legislatures for Some Union Territories',
              'Some Union Territories, like Delhi and Puducherry, are allowed to have their own small legislatures (groups of elected people) and ministers to make local laws.',
            ),
            _buildArticle(
              'Article 239AA: Delhi\'s Special Rules',
              'Delhi has a unique setup where it has its own legislature, but the central government still controls key areas like police and land.',
            ),
            _buildArticle(
              'Article 240: President’s Powers',
              'For some Union Territories, like Andaman and Nicobar Islands, the President can make rules or laws directly.',
            ),
            _buildArticle(
              'Article 241: Courts for Union Territories',
              'Union Territories have courts to handle legal matters, and sometimes the High Court of a nearby state takes care of their cases.',
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
