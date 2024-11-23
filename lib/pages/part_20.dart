import 'package:flutter/material.dart';

class PartTwentyPage extends StatelessWidget {
  const PartTwentyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part XX - Amendment of the Constitution'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Amendment of the Constitution',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Highlighted color for main heading
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This part explains how the Constitution can be changed or updated to meet new needs or challenges. The Constitution is not permanent and can be modified by following a special process.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildArticle(
              'Article 368: Power of Parliament to Amend the Constitution and Procedure Therefor',
              '1. Who can change the Constitution?\n'
              '- Only Parliament (the law-making body of India) can change or amend the Constitution.\n\n'
              '2. How can it be changed?\n'
              '- The process of changing the Constitution is not simple. Parliament must pass a law to make changes, and sometimes both houses of Parliament (Lok Sabha and Rajya Sabha) must agree.\n\n'
              '3. What kind of changes can be made?\n'
              '- Some parts of the Constitution can be changed easily, while others require more steps. For certain changes, approval from state legislatures (state assemblies) is needed.\n\n'
              '4. What happens after an amendment is made?\n'
              '- Once the amendment is passed by Parliament and, if required, by state legislatures, it becomes a part of the Constitution.',
            ),
            const SizedBox(height: 20),
            const Text(
              'This part makes sure that the Constitution can be updated to reflect changes in society, but it also ensures that it cannot be changed too easily. It keeps the Constitution strong and stable while allowing improvements.',
              style: TextStyle(fontSize: 18),
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
