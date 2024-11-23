import 'package:flutter/material.dart';

class PartNineteenPage extends StatelessWidget {
  const PartNineteenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part XIX - Miscellaneous'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Miscellaneous',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Highlighted color for main heading
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This part of the Constitution deals with some extra rules that don\'t fit into other parts. It includes things like the protection of the flag, national anthem, and other special matters.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildArticle(
              'Article 361: Protection of President and Governors',
              '1. What does it mean for the President?\n'
              '- The President cannot be sued or arrested for anything they do while in office.\n'
              '2. What about Governors?\n'
              '- Similarly, Governors of states are also protected from being sued or arrested for their actions in office.',
            ),
            _buildArticle(
              'Article 362: Provisions as to Minorities, etc.',
              'The government must protect the rights of minorities, and this article helps ensure that the laws and decisions made by the government treat everyone fairly, no matter their religion, language, or culture.',
            ),
            _buildArticle(
              'Article 363: Bar to Jurisdiction of Courts',
              'Courts (like the Supreme Court or High Courts) cannot hear cases that involve matters decided by the President or Governor based on their special powers. This means that some decisions made by the President or Governor are final and cannot be challenged in court.',
            ),
            _buildArticle(
              'Article 364: Power of the President to Make Laws for Union Territories',
              'The President has the power to make laws for Union Territories (areas not part of any state, like Delhi or Chandigarh). These laws apply to people living in these areas.',
            ),
            _buildArticle(
              'Article 365: Effect of Failure to Comply with Directions Given by the Union',
              'If a state does not follow the directions given by the central government (Union), it can affect the state’s financial support from the central government. The central government has the right to take action to make sure the state follows its directions.',
            ),
            _buildArticle(
              'Article 366: Definition of Certain Terms',
              'This article defines important words used in the Constitution, like "State," "Union," and "Law." These definitions help make sure the Constitution is clear and easy to understand.',
            ),
            _buildArticle(
              'Article 367: Interpretation of the Constitution',
              'If there is any confusion or doubt about how to understand any part of the Constitution, the President can give a clear explanation of what it means.',
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
