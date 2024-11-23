import 'package:flutter/material.dart';

class PartSixteenPage extends StatelessWidget {
  const PartSixteenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part XVI - Special Provisions Relating to Certain Classes'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Special Provisions Relating to Certain Classes',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Highlighted color for main heading
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This part of the Constitution talks about special help and benefits for certain groups of people in India, like the Scheduled Castes (SCs), Scheduled Tribes (STs), and other backward groups, to make sure everyone gets a fair chance in life.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildArticle(
              'Article 330: Seats for Scheduled Castes and Tribes in the Lok Sabha',
              'Some seats in the Lok Sabha (India\'s Parliament) are kept reserved for people from Scheduled Castes and Scheduled Tribes so that they have a say in making important decisions.',
            ),
            _buildArticle(
              'Article 331: Representation for Anglo-Indian Community in the Lok Sabha',
              'If the President feels that the Anglo-Indian community (people of mixed Indian and European heritage) is not well-represented, they can appoint up to two members to the Lok Sabha.',
            ),
            _buildArticle(
              'Article 332: Seats for Scheduled Castes and Tribes in State Assemblies',
              'In every state\'s Legislative Assembly, some seats are reserved for people from Scheduled Castes and Scheduled Tribes so they can represent their communities.',
            ),
            _buildArticle(
              'Article 333: Representation for Anglo-Indian Community in State Assemblies',
              'The Governor of a state can appoint one person from the Anglo-Indian community to the State Assembly if they feel the community is not represented enough.',
            ),
            _buildArticle(
              'Article 334: Time Period for Reservation',
              'The special seats reserved for Scheduled Castes, Scheduled Tribes, and Anglo-Indians were originally meant to last only 10 years from 1950. However, this time has been extended many times, so these reservations are still in place today.',
            ),
            _buildArticle(
              'Article 335: Claims of SCs and STs to Services and Jobs',
              'While giving government jobs, people from Scheduled Castes and Tribes should get special consideration, but it should not hurt how government offices work.',
            ),
            _buildArticle(
              'Article 336: Special Provisions for Anglo-Indians in Certain Jobs',
              'Anglo-Indians had special help for jobs in railways, customs, postal services, and more, but this was only for the first ten years after the Constitution started.',
            ),
            _buildArticle(
              'Article 337: Educational Grants for Anglo-Indians',
              'Anglo-Indians also got help from the government for running their schools and colleges, but this support was for a limited time.',
            ),
            _buildArticle(
              'Article 338: National Commission for Scheduled Castes',
              'A group called the National Commission for Scheduled Castes was created to protect the rights of people from Scheduled Castes. They check if the government is doing enough to help SCs.',
            ),
            _buildArticle(
              'Article 338A: National Commission for Scheduled Tribes',
              'Another group, the National Commission for Scheduled Tribes, was created to protect the rights of people from Scheduled Tribes. They make sure the government is helping STs.',
            ),
            _buildArticle(
              'Article 339: Control over Plans for SCs and STs',
              'The central government (Union Government) can give advice and help to states for planning and running programs for SCs and STs.',
            ),
            _buildArticle(
              'Article 340: Identifying Backward Classes',
              'The President can create a group to study and figure out which communities are backward (facing difficulties) and recommend ways to help them.',
            ),
            _buildArticle(
              'Article 341: Who Are Scheduled Castes?',
              'The President makes a list of Scheduled Castes in every state, and only those in the list are considered SCs.',
            ),
            _buildArticle(
              'Article 342: Who Are Scheduled Tribes?',
              'The President also makes a list of Scheduled Tribes in every state, and only those in the list are considered STs.',
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
