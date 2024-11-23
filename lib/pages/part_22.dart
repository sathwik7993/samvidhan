import 'package:flutter/material.dart';

class PartTwentyTwoPage extends StatelessWidget {
  const PartTwentyTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part XXII - Short Title, Commencement, Authoritative Text in Hindi, and Repeals'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Short Title, Commencement, Authoritative Text in Hindi, and Repeals',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This part talks about how the Constitution of India starts, its official Hindi version, and which old laws were removed.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildArticle(
              'Article 393',
              'The Constitution of India is officially called the "Constitution of India." This is the short title by which the Constitution is known.',
            ),
            _buildArticle(
              'Article 394',
              'The Constitution came into effect on January 26, 1950, which is also celebrated as Republic Day. From this day, all the rules and laws in the Constitution started to apply.',
            ),
            _buildArticle(
              'Article 394A',
              'The official text of the Constitution was first written in English, but there is also an authoritative Hindi version. This means the Hindi translation is treated as an official and trusted version of the Constitution, alongside the English one.',
            ),
            _buildArticle(
              'Article 395',
              'Certain old laws and legal acts that were not part of the new Constitution were officially repealed or canceled. These old laws were no longer valid after the Constitution came into effect.',
            ),
            const SizedBox(height: 20),
            const Text(
              'This part mainly deals with the official name, start date, the official Hindi version, and which old laws were canceled when the Constitution of India began.',
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
              color: Colors.blue,
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
