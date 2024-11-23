import 'package:flutter/material.dart';

class PartEighteenPage extends StatelessWidget {
  const PartEighteenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part XVIII - Emergency Provisions'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Emergency Provisions',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Highlighted color for main heading
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This part talks about what happens if there is an emergency in India. An emergency is when something serious happens, like a war or a natural disaster, and the government needs special powers to handle it.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildArticle(
              'Article 352: Proclamation of Emergency',
              '1. When can an emergency happen?\n'
              '- An emergency can be declared if there is a war, a threat of war, or if there is serious danger to the country’s security from foreign attack, armed rebellion, or other reasons.\n'
              '2. Who can declare an emergency?\n'
              '- The President can declare an emergency if they feel it’s needed, based on the advice from the Cabinet (group of ministers).\n'
              '3. What happens during an emergency?\n'
              '- The central government gets special powers to manage the situation and can take control of areas that are normally under state governments.',
            ),
            _buildArticle(
              'Article 353: Power to Deal with Emergency',
              'During an emergency, the central government can take control of areas that are normally managed by the states, like the police, public health, or transportation.',
            ),
            _buildArticle(
              'Article 354: Application of Provisions Relating to Financial Emergency',
              'The President can make changes to how money is managed in India during an emergency, which includes controlling how the central and state governments handle money.',
            ),
            _buildArticle(
              'Article 355: Duty of the Union to Protect States',
              'The central government (Union) must protect each state from dangers like armed rebellion or foreign invasion. If any state is threatened, the Union government can take action to help.',
            ),
            _buildArticle(
              'Article 356: Proclamation of President\'s Rule in States',
              '1. When can President\'s Rule be declared?\n'
              '- If a state’s government cannot function properly, or if there is a breakdown of law and order in the state, the President can take control of the state’s government.\n'
              '2. What happens during President\'s Rule?\n'
              '- The central government runs the state, and the state\'s legislature (Assembly) may be suspended.\n'
              '3. How long does President\'s Rule last?\n'
              '- President\'s Rule can last for six months, but it can be extended with Parliament\'s approval.',
            ),
            _buildArticle(
              'Article 357: Exercise of Legislative Powers Under Proclamation of Emergency',
              'When President’s Rule is in place in a state, the President can make laws for that state, even without the state’s legislature.',
            ),
            _buildArticle(
              'Article 358: Suspension of the Provisions of Article 19 During Emergency',
              '1. What is Article 19?\n'
              '- Article 19 gives people the right to move freely, speak, and assemble.\n'
              '2. How is it affected during an emergency?\n'
              '- If an emergency is declared, the government can temporarily stop or limit these rights, but only if it is necessary for the emergency.',
            ),
            _buildArticle(
              'Article 359: Suspension of Fundamental Rights During Emergency',
              '1. What can happen to fundamental rights?\n'
              '- During an emergency, the President can suspend certain fundamental rights that people have, but only for the period of the emergency.\n'
              '2. Which rights can be suspended?\n'
              '- The rights to move freely, speak freely, and others can be temporarily suspended. However, the rights against discrimination and the right to life cannot be taken away.',
            ),
            _buildArticle(
              'Article 360: Financial Emergency',
              '1. What is a financial emergency?\n'
              '- If the country’s financial situation becomes very bad, like the government cannot pay its debts or the country is facing financial collapse, the President can declare a financial emergency.\n'
              '2. What happens during a financial emergency?\n'
              '- The President can take control of financial matters, including reducing the salaries of government workers and changing how money is spent.\n'
              '3. How long can a financial emergency last?\n'
              '- A financial emergency can last for as long as it is needed, and Parliament must agree to it every two months.',
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
