import 'package:flutter/material.dart';

class PartFourteenPage extends StatelessWidget {
  const PartFourteenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part XIV - Services Under the Union and States'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Services Under the Union and States',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Highlighted color for main heading
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This part talks about jobs in the government.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildArticle(
              'Article 308: Government Jobs',
              'The government makes rules for jobs in offices like schools, police, and health centers.',
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
