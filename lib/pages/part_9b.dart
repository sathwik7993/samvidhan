import 'package:flutter/material.dart';

class PartNineBPage extends StatelessWidget {
  const PartNineBPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part IXB - The Co-operative Societies'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'The Co-operative Societies',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Highlighted color for main heading
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This part explains the regulation and governance of Co-operative Societies in India.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildArticle(
              'Article 243ZI: Definitions',
              'This article defines terms like "Co-operative Societies" and "State Legislature" in relation to this part.',
            ),
            _buildArticle(
              'Article 243ZJ: Co-operative Societies',
              'This article lays down how Co-operative Societies should function and be governed.',
            ),
            _buildArticle(
              'Article 243ZK: Power of the State Legislature',
              'This article grants power to state legislatures to regulate Co-operative Societies.',
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
