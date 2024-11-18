// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PreamblePage extends StatelessWidget {
  const PreamblePage({super.key});

  static const String keyIdeas = '''
We, the people of India, have promised to make India a country that is independent, fair, respectful of all religions, and ruled by the people. We want everyone in India to have freedom, equality, and justice.

• Justice for Everyone: Everyone should have fairness in their lives, whether it's about social issues, money, or politics.

• Freedom to Express: Everyone can think, speak, and believe what they want, including their religion and way of worship.

• Equality for All: Everyone should be treated equally and have the same chances in life.

• Friendship and Unity: We should be friends with one another, respect each other’s worth, and work together to keep our country united.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preamble of the Constitution'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Preamble to the Constitution of India',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'The Preamble is a brief introductory statement that sets the tone for the Constitution of India. It highlights the core principles on which the Constitution is based, ensuring justice, freedom, equality, and unity for all citizens.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              const Text(
                'Key Ideas:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                keyIdeas,
                style: const TextStyle(fontSize: 16, height: 1.6),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
