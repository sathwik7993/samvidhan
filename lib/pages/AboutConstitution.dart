// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AboutConstitutionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About the Constitution of India'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About the Constitution of India',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'The Constitution of India is the supreme law that defines the rules and principles for how the country should be governed. It is like the rulebook for the entire nation. The Constitution provides a framework for the government, rights of the citizens, and how different parts of the government work together. It tells everyone, from the President to the common citizens, what they can and cannot do.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'When was it created?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'The Constitution of India was created on November 26, 1949, by a special group of people called the Constituent Assembly. This assembly took more than two years to finish the Constitution. It was put into effect on January 26, 1950. This date, January 26, is celebrated as Republic Day every year.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Why is the Constitution important?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'The Constitution is extremely important because it ensures that everyone in India is treated fairly and equally. It helps protect people\'s rights, such as the right to speak freely, the right to practice any religion, and the right to vote in elections. It sets up the government’s powers and makes sure no one has too much power. The Constitution also talks about how laws should be made and how disputes should be settled.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'What does the Constitution contain?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'The Constitution contains a detailed list of rules and guidelines. It is divided into different parts, each covering a specific topic. Some of the important parts of the Constitution include:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                '- Preamble: The introduction that talks about the core values of India like justice, equality, and liberty.\n'
                '- Fundamental Rights: These are basic rights that every citizen has, such as the right to equality, freedom, and protection from exploitation.\n'
                '- Directive Principles of State Policy: These are guidelines for the government to make laws that help create a better society.\n'
                '- Union and State Governments: This part explains how the central and state governments work and share power.\n'
                '- Amendment Process: This part explains how the Constitution can be changed or updated when necessary.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'How is the Constitution divided?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'The Constitution is divided into 25 Parts, and it has 448 Articles (sections). Each part deals with a specific topic, such as the rights of citizens, the structure of the government, and the relationship between the central government and state governments.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Some of the main parts of the Constitution include:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '- Part I: Union and its Territory – Talks about the structure of India and its territories.\n'
                '- Part III: Fundamental Rights – These are the basic rights that every citizen has, such as the right to equality, freedom, and protection from exploitation.\n'
                '- Part IV: Directive Principles of State Policy – These are guidelines for the government to help improve the lives of the citizens.\n'
                '- Part V: The Union – Talks about the executive, legislative, and judicial powers of the central government.\n'
                '- Part X: Scheduled and Tribal Areas – Deals with the administration of areas where tribal people live.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'How does the Constitution help the people?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'The Constitution of India protects the rights and freedoms of citizens. It makes sure that everyone is treated equally and fairly, no matter their caste, religion, or gender. It also provides laws to protect the poor and marginalized groups in society.\n\n'
                'It also establishes a democratic government, where leaders are chosen through elections, and everyone has the right to participate in these elections. This gives people the power to shape their future and the future of the country.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Key Features of the Constitution',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '- Sovereign: India is independent and free from any external control.\n'
                '- Socialist: The Constitution aims to reduce inequalities and make sure everyone gets fair treatment.\n'
                '- Secular: The government does not favor any religion. Every person has the right to follow their religion freely.\n'
                '- Democratic: The people elect their leaders through free and fair elections.\n'
                '- Republic: The head of the country, the President, is elected and not a monarch.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'How is the Constitution changed?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'The Constitution can be changed or amended if necessary. There is a specific process for making changes, and it requires approval from both houses of Parliament and, in some cases, the state governments. This helps keep the Constitution up to date with the changing needs of the country.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Conclusion',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'The Constitution of India is the backbone of the country, making sure that everyone is treated fairly and that the government works properly. It is a powerful document that has guided India for more than 70 years and will continue to shape the nation’s future for generations to come.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
