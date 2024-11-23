import 'package:flutter/material.dart';

class PartSeventeenPage extends StatelessWidget {
  const PartSeventeenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part XVII - Official Language'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Official Language',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Highlighted color for main heading
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This part of the Constitution explains how different languages are used for government work, laws, and communication in India. It also ensures fairness to all languages.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildArticle(
              'Article 343: Official Language of the Union',
              '1. *Main Language*: Hindi in the Devanagari script is the official language of India.\n'
              '2. *Numbers*: The numbers used in official work will follow the international form (like in English).\n'
              '3. *Using English*: English will be used along with Hindi for 15 years after the Constitution began (from 1950). After that, Parliament can allow English to continue.',
            ),
            _buildArticle(
              'Article 344: Commission and Committee on Official Language',
              '1. *Setting Up a Commission*: After five years from the start of the Constitution, and then every ten years, a group of experts is created to study how languages are used in India.\n'
              '2. *Purpose*: This group gives advice on:\n'
              '   - How to make Hindi more common.\n'
              '   - Using other Indian languages fairly.\n'
              '   - Making sure no one feels left out because of language.',
            ),
            _buildArticle(
              'Article 345: Official Language of a State',
              'Each state can pick its own language for government work. It can be Hindi, English, or any language spoken in the state.',
            ),
            _buildArticle(
              'Article 346: Language for Communication Between States',
              'States must use Hindi or English when talking to each other or the central government.',
            ),
            _buildArticle(
              'Article 347: Special Language for a State',
              'If many people in a state speak a different language, the President can let that language be used for official work in that state.',
            ),
            _buildArticle(
              'Article 348: Language for Laws and Supreme Court',
              '1. *Laws in English*: All laws, rules, and court documents must be written in English.\n'
              '2. *State Laws*: States can write their laws in their chosen official language, but they must also provide an English version.',
            ),
            _buildArticle(
              'Article 349: Changes to the Official Language',
              'If Parliament wants to make big changes to official language rules, they must first get advice from the language experts set up under Article 344.',
            ),
            _buildArticle(
              'Articles 350 to 350B: Protecting People’s Language Rights',
              '1. *Article 350*: Anyone can send letters or applications to the government in any language they know.\n'
              '2. *Article 350A*: States must provide education in a child’s mother tongue if the language is different from the state’s main language.\n'
              '3. *Article 350B*: A special officer, called the *Linguistic Minorities Commissioner*, is appointed to protect the language rights of small groups of people.',
            ),
            _buildArticle(
              'Article 351: Promoting Hindi',
              'The government must work to make Hindi popular across the country while respecting all other Indian languages. Hindi should include words from Sanskrit and other Indian languages to make it easy for everyone to understand.',
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
