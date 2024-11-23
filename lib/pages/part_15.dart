import 'package:flutter/material.dart';

class PartFifteenPage extends StatelessWidget {
  const PartFifteenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part XV - Elections'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Elections',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Highlighted color for main heading
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This part explains how elections are held in India.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildArticle(
              'Article 324: Election Commission',
              'The Election Commission manages elections in India to make sure they are fair.',
            ),
            _buildArticle(
              'Article 326: Voting Rights',
              'Every Indian citizen aged 18 or older can vote.',
            ),
            _buildArticle(
              'Article 329: No Court Interference',
              'Courts cannot stop elections once they have started.',
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
