import 'package:flutter/material.dart';

class PartTwentyOnePage extends StatelessWidget {
  const PartTwentyOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part XXI - Temporary, Transitional, and Special Provisions'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Temporary, Transitional, and Special Provisions',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This part talks about the special rules, changes, and temporary measures that were put in place after India became independent. These rules helped deal with unique situations, special states, and old laws that needed to be adjusted.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildArticle(
              'Article 369',
              'Temporary power to Parliament to make laws with respect to certain matters in the State List as if they were matters in the Concurrent List. This allowed Parliament to handle urgent matters during India\'s early years.',
            ),
            _buildArticle(
              'Article 370',
              'Temporary provisions with respect to Jammu and Kashmir, allowing the state more autonomy over laws in areas like education, land, and governance. These provisions were revoked in 2019.',
            ),
            _buildArticle(
              'Article 371',
              'Special provision with respect to Maharashtra and Gujarat for managing linguistic and economic adjustments during state formation in 1960.',
            ),
            _buildArticle(
              'Article 371A',
              'Special provision for Nagaland, protecting its cultural and traditional practices related to land ownership, religion, and social customs.',
            ),
            _buildArticle(
              'Article 371B',
              'Special provision for Assam, ensuring representation and protection of the interests of its tribal areas and people.',
            ),
            _buildArticle(
              'Article 371C',
              'Special provision for Manipur, giving legislative safeguards for its tribal regions to preserve their unique identity.',
            ),
            _buildArticle(
              'Article 371D',
              'Special provisions for Andhra Pradesh and Telangana to ensure equitable distribution of resources and opportunities.',
            ),
            _buildArticle(
              'Article 371E',
              'Provision for establishing a Central University in Andhra Pradesh to improve education and development.',
            ),
            _buildArticle(
              'Article 371F',
              'Special provision for Sikkim, protecting its culture and ensuring smooth integration into India after its accession in 1975.',
            ),
            _buildArticle(
              'Article 371G',
              'Special provision for Mizoram, ensuring the preservation of its social and cultural practices, as well as its land ownership laws.',
            ),
            _buildArticle(
              'Article 371H',
              'Special provision for Arunachal Pradesh, focusing on its tribal people’s rights and culture.',
            ),
            _buildArticle(
              'Article 371I',
              'Special provision for Goa, ensuring its linguistic and cultural identity is preserved.',
            ),
            _buildArticle(
              'Article 371J',
              'Special provision for Karnataka to address regional disparities and ensure development in backward areas.',
            ),
            _buildArticle(
              'Article 372',
              'Laws in force before the commencement of the Constitution continued to operate but could be adapted to fit the new constitutional framework.',
            ),
            _buildArticle(
              'Article 372A',
              'The President had the power to adapt or modify pre-existing laws to ensure compatibility with the Constitution.',
            ),
            _buildArticle(
              'Article 373',
              'Empowered the President to make decisions regarding preventive detention in special cases.',
            ),
            _buildArticle(
              'Article 374',
              'Provisions about the Federal Court and ongoing legal cases during the transition to the new judiciary system.',
            ),
            _buildArticle(
              'Article 375',
              'Existing courts and government officers were allowed to continue their functions under the new Constitution.',
            ),
            _buildArticle(
              'Article 376',
              'Addressed the transition of High Court judges to the new legal system.',
            ),
            _buildArticle(
              'Article 377',
              'Ensured continuity of the Comptroller and Auditor-General\'s duties during the transition period.',
            ),
            _buildArticle(
              'Article 378',
              'Provided for the continuation of Public Service Commissions under the new Constitution.',
            ),
            _buildArticle(
              'Article 378A',
              'Special provision for the duration of Andhra Pradesh\'s Legislative Assembly.',
            ),
            _buildArticle(
              'Omitted Articles (379–390)',
              'These articles, relating to provisional arrangements during India\'s early years, were removed after the permanent system was established.',
            ),
            _buildArticle(
              'Article 391',
              'Allowed the President to amend certain schedules in special situations, a power no longer needed today.',
            ),
            _buildArticle(
              'Article 392',
              'Empowered the President to remove any difficulties while applying the Constitution during its early years.',
            ),
            const SizedBox(height: 20),
            const Text(
              'This part of the Constitution ensured a smooth transition during India\'s early years and addressed unique challenges faced by different states and regions.',
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
