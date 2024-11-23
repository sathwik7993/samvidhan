import 'package:flutter/material.dart';

class PartTwelvePage extends StatelessWidget {
  const PartTwelvePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part XII - Finance, Property, and Taxes'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Finance, Property, and Taxes',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Highlighted color for main heading
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This part is about money, property, and taxes in India.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildArticle(
              'Article 265: Taxes',
              'No one can collect taxes unless the law says so.',
            ),
            _buildArticle(
              'Article 280: Finance Commission',
              'A Finance Commission decides how to share money between the central and state governments.',
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
