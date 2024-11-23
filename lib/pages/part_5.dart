import 'package:flutter/material.dart';

class PartFivePage extends StatelessWidget {
  const PartFivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part V - The Union'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'The Union',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Highlighted color
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This part talks about how the central government works and the roles of key people and groups in India.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildArticle(
              'Article 52: The President',
              'India has a leader called the President. The President acts like the head of the country and performs many important duties, like signing laws and representing India to the world.',
            ),
            _buildArticle(
              'Article 53: The President’s Powers',
              'The President has the power to make sure the country is run well. They can ask others, like the Prime Minister and ministers, to help with their duties.',
            ),
            _buildArticle(
              'Article 54: Choosing the President',
              'The President is chosen by a special group of people. These are members of Parliament (the people who make laws) and members of State Assemblies (who look after each state).',
            ),
            _buildArticle(
              'Article 55: How the President is Elected',
              'To make sure every state gets a fair say, votes are counted in a way that balances the population of the states and the size of Parliament.',
            ),
            _buildArticle(
              'Article 56: The President’s Term',
              'The President works for five years but can leave early if they want or if they are asked to step down.',
            ),
            _buildArticle(
              'Article 57: Re-election',
              'If the President has done a good job, they can be chosen again.',
            ),
            _buildArticle(
              'Article 58: Who Can Be President',
              'To be President, a person must be at least 35 years old, an Indian citizen, and meet other qualifications.',
            ),
            _buildArticle(
              'Article 59: The President’s Job Rules',
              'While working, the President cannot do any other job and must live in the President’s house, called Rashtrapati Bhavan.',
            ),
            _buildArticle(
              'Article 60: The President’s Oath',
              'Before starting work, the President promises to follow the Constitution and do their job well.',
            ),
            _buildArticle(
              'Article 61: Impeachment',
              'If the President does something wrong, Parliament can remove them by following a strict process.',
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
