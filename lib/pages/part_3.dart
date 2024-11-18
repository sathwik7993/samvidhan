// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PartThreePage extends StatelessWidget {
  const PartThreePage({super.key});

  static const String content = '''
Part III: Fundamental Rights

Article 12: What is the State?
In this part, "the State" means the Government of India, the governments of each state, and local authorities in India.

Article 13: Laws Must Follow Fundamental Rights
1. Any law that goes against the rights mentioned in this Part will be considered invalid.
2. The government cannot make laws that take away the rights given in this Part.

Article 14: Right to Equality
Everyone is equal before the law, which means the law treats everyone the same way.

Article 15: No Discrimination
1. The government cannot treat any person unfairly based on religion, race, caste, sex, or where they were born.
2. No one can be denied access to public places like shops and parks because of these reasons.

Article 16: Equality in Jobs
Everyone has the right to apply for any job or position in the government. No one can be treated unfairly in job matters based on religion, race, caste, or sex.

Article 17: Abolishment of Untouchability
The practice of "Untouchability" is illegal. No one can be treated as inferior to others because of their caste.

Article 18: No Titles
1. The government cannot give titles to people, except for military or academic honors.
2. Citizens cannot accept any titles from foreign countries.

Article 19: Right to Freedom
Every citizen has the following freedoms:
1. Freedom of speech and expression.
2. The right to gather peacefully without weapons.
3. The right to form groups or unions.
4. The right to travel freely across the country.
5. The right to live and settle anywhere in India.
6. The right to work in any profession or start a business.

Article 20: Protection from Punishment
1. No one can be punished for something that was not against the law when they did it.
2. No one can be punished twice for the same crime.
3. No one has to be a witness against themselves.

Article 21: Right to Life and Liberty
No one can be taken away from their life or freedom except by following the law.

Article 21A: Right to Education
The State will provide free and compulsory education to all children from the age of six to fourteen years.

Article 22: Protection against Arrest
1. Anyone who is arrested must be told why they are being arrested.
2. They have the right to see a lawyer.
3. They must be presented before a magistrate within 24 hours of their arrest.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part III: Fundamental Rights'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main Heading
            Text(
              'Part III: Fundamental Rights',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue, // Highlight the main heading
                  ),
            ),
            const SizedBox(height: 20),

            // Content with highlighted article headings
            _buildArticleText('Article 12: What is the State?'),
            const SizedBox(height: 8),
            Text(
              'In this part, "the State" means the Government of India, the governments of each state, and local authorities in India.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 13: Laws Must Follow Fundamental Rights'),
            const SizedBox(height: 8),
            Text(
              '1. Any law that goes against the rights mentioned in this Part will be considered invalid.\n'
              '2. The government cannot make laws that take away the rights given in this Part.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 14: Right to Equality'),
            const SizedBox(height: 8),
            Text(
              'Everyone is equal before the law, which means the law treats everyone the same way.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 15: No Discrimination'),
            const SizedBox(height: 8),
            Text(
              '1. The government cannot treat any person unfairly based on religion, race, caste, sex, or where they were born.\n'
              '2. No one can be denied access to public places like shops and parks because of these reasons.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 16: Equality in Jobs'),
            const SizedBox(height: 8),
            Text(
              'Everyone has the right to apply for any job or position in the government. No one can be treated unfairly in job matters based on religion, race, caste, or sex.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 17: Abolishment of Untouchability'),
            const SizedBox(height: 8),
            Text(
              'The practice of "Untouchability" is illegal. No one can be treated as inferior to others because of their caste.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 18: No Titles'),
            const SizedBox(height: 8),
            Text(
              '1. The government cannot give titles to people, except for military or academic honors.\n'
              '2. Citizens cannot accept any titles from foreign countries.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 19: Right to Freedom'),
            const SizedBox(height: 8),
            Text(
              'Every citizen has the following freedoms:\n'
              '1. Freedom of speech and expression.\n'
              '2. The right to gather peacefully without weapons.\n'
              '3. The right to form groups or unions.\n'
              '4. The right to travel freely across the country.\n'
              '5. The right to live and settle anywhere in India.\n'
              '6. The right to work in any profession or start a business.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 20: Protection from Punishment'),
            const SizedBox(height: 8),
            Text(
              '1. No one can be punished for something that was not against the law when they did it.\n'
              '2. No one can be punished twice for the same crime.\n'
              '3. No one has to be a witness against themselves.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 21: Right to Life and Liberty'),
            const SizedBox(height: 8),
            Text(
              'No one can be taken away from their life or freedom except by following the law.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 21A: Right to Education'),
            const SizedBox(height: 8),
            Text(
              'The State will provide free and compulsory education to all children from the age of six to fourteen years.',
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 16),

            _buildArticleText('Article 22: Protection against Arrest'),
            const SizedBox(height: 8),
            Text(
              '1. Anyone who is arrested must be told why they are being arrested.\n'
              '2. They have the right to see a lawyer.\n'
              '3. They must be presented before a magistrate within 24 hours of their arrest.',
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
