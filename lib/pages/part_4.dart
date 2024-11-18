// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PartFourPage extends StatelessWidget {
  const PartFourPage({super.key});

  static const String content = '''
The Directive Principles of State Policy in Part IV of the Indian Constitution are guidelines for the government to follow while making laws. Although these principles are not enforceable in court, they are important rules that aim to ensure the well-being and development of Indian citizens. Here are some of the main principles:

Article 38 – Welfare of the People
The government should improve people's lives by creating a fair society where everyone has equal opportunities and justice, covering social, economic, and political areas.

Article 39 – Fairness in Resources and Work
The government should make sure resources like land and wealth are shared to benefit everyone, not just a few people. It also promotes "Equal Pay for Equal Work" to ensure men and women receive fair wages.

Article 39A – Help for the Poor in Legal Matters
The government should provide help to those who cannot afford it, ensuring that everyone can access justice and fair treatment in courts.

Article 41 – Right to Work, Education, and Help
The government should support people who need jobs, education, or assistance in cases of old age, sickness, and unemployment.

Article 45 – Free and Compulsory Education for Children
The government must work toward free education for children up to 14 years old, so they can grow and learn in a supportive environment.

Article 47 – Raising Nutrition and Health Standards
The government should work to improve people's health, make nutritious food available, and reduce the use of harmful substances like alcohol, except for medical purposes.

These principles aim to guide the government to create a fair and supportive environment for all citizens in India.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Directive Principles of State Policy'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main Heading
            Text(
              'Directive Principles of State Policy',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue, // Highlight the main heading
                  ),
            ),
            const SizedBox(height: 20),

            // Content with highlighted article headings
            _buildArticleText('Article 38 – Welfare of the People'),
            const SizedBox(height: 8),
            Text(
              'The government should improve people\'s lives by creating a fair society where everyone has equal opportunities and justice, covering social, economic, and political areas.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 39 – Fairness in Resources and Work'),
            const SizedBox(height: 8),
            Text(
              'The government should make sure resources like land and wealth are shared to benefit everyone, not just a few people. It also promotes "Equal Pay for Equal Work" to ensure men and women receive fair wages.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 39A – Help for the Poor in Legal Matters'),
            const SizedBox(height: 8),
            Text(
              'The government should provide help to those who cannot afford it, ensuring that everyone can access justice and fair treatment in courts.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 41 – Right to Work, Education, and Help'),
            const SizedBox(height: 8),
            Text(
              'The government should support people who need jobs, education, or assistance in cases of old age, sickness, and unemployment.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 45 – Free and Compulsory Education for Children'),
            const SizedBox(height: 8),
            Text(
              'The government must work toward free education for children up to 14 years old, so they can grow and learn in a supportive environment.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 47 – Raising Nutrition and Health Standards'),
            const SizedBox(height: 8),
            Text(
              'The government should work to improve people\'s health, make nutritious food available, and reduce the use of harmful substances like alcohol, except for medical purposes.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            // Closing paragraph
            Text(
              'These principles aim to guide the government to create a fair and supportive environment for all citizens in India.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to highlight article headings
  Widget _buildArticleText(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Colors.blue, // Color for the article headings
      ),
    );
  }
}
