import 'package:flutter/material.dart';

class PartThreePage extends StatelessWidget {
  const PartThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part III - Fundamental Rights'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Part III: Fundamental Rights',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Highlighted color
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This part of the Constitution talks about the basic rights that every citizen of India has, such as the right to equality, freedom, and protection from exploitation.',
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
            const SizedBox(height: 20),

            // General Section
            _buildSectionTitle('General'),
            _buildArticle('Article 12: Definition',
                'This article defines what "State" means in the Constitution. It includes the government, Parliament, and the courts.'),
            _buildArticle('Article 13: Laws inconsistent with or in derogation of the fundamental rights',
                'This article says that if a law goes against the fundamental rights, that law will be considered invalid. Fundamental rights must be followed by everyone, including the government.'),
            const SizedBox(height: 20),

            // Right to Equality
            _buildSectionTitle('Right to Equality'),
            _buildArticle('Article 14: Equality before law',
                'This article says that everyone is equal before the law. No one is above the law, and everyone has the same legal rights.'),
            _buildArticle('Article 15: Prohibition of discrimination on grounds of religion, race, caste, sex, or place of birth',
                'This article ensures that no one can be treated unfairly based on their religion, race, caste, sex, or where they were born.'),
            _buildArticle('Article 16: Equality of opportunity in matters of public employment',
                'This article says that everyone should have equal chances to get government jobs, and no one should be stopped from applying for a job based on their background.'),
            _buildArticle('Article 17: Abolition of Untouchability',
                'This article makes untouchability illegal in India. People can’t be treated unfairly because of their caste.'),
            _buildArticle('Article 18: Abolition of titles',
                'This article says that titles like “Sir” or “Knight” cannot be given to people. No one can be given a special title by the government.'),
            const SizedBox(height: 20),

            // Right to Freedom
            _buildSectionTitle('Right to Freedom'),
            _buildArticle('Article 19: Protection of certain rights regarding freedom of speech, etc.',
                'This article gives people the freedom to speak their mind, assemble peacefully, and express their opinions. It also protects the right to work in any profession.'),
            _buildArticle('Article 20: Protection in respect of conviction for offences',
                'This article says that a person cannot be punished for a crime unless they have been found guilty in court. No one can be punished more than once for the same crime.'),
            _buildArticle('Article 21: Protection of life and personal liberty',
                'This article ensures that everyone has the right to live and be free. The government cannot take away someone’s life or freedom without a good reason.'),
            _buildArticle('Article 21A: Right to education',
                'This article says that every child between the ages of 6 and 14 has the right to free and compulsory education.'),
            _buildArticle('Article 22: Protection against arrest and detention in certain cases',
                'This article ensures that no one can be arrested without being told why they are being arrested. It also protects people from being held in jail without a fair trial.'),
            const SizedBox(height: 20),

            // Right against Exploitation
            _buildSectionTitle('Right against Exploitation'),
            _buildArticle('Article 23: Prohibition of traffic in human beings and forced labour',
                'This article makes it illegal to buy or sell people (human trafficking) or force anyone to work without paying them (forced labour).'),
            _buildArticle('Article 24: Prohibition of employment of children in factories, etc.',
                'This article says that children under 14 cannot be made to work in factories or other dangerous jobs.'),
            const SizedBox(height: 20),

            // Additional sections can be added here similarly.
            // Right to Freedom of Religion
_buildArticle('Article 25: Freedom of conscience and free profession, practice, and propagation of religion',
              'This article gives everyone the freedom to believe in any religion and practice or spread their beliefs.'),
_buildArticle('Article 26: Freedom to manage religious affairs',
              'This article gives religious groups the right to manage their own temples, mosques, churches, and other religious places.'),
_buildArticle('Article 27: Freedom as to payment of taxes for promotion of any particular religion',
              'This article says that the government cannot make people pay taxes to support or promote any specific religion.'),
_buildArticle('Article 28: Freedom as to attendance at religious instruction or religious worship in certain educational institutions',
              'This article ensures that people can choose whether or not they want to attend religious classes or prayers in schools and colleges.'),

// Cultural and Educational Rights
_buildArticle('Article 29: Protection of interests of minorities',
              'This article protects the rights of minorities (people who are different from the majority) and ensures they can keep their language, culture, and religion safe.'),
_buildArticle('Article 30: Right of minorities to establish and administer educational institutions',
              'This article gives minorities the right to set up and run their own schools or colleges.'),

// Saving of Certain Laws
_buildArticle('Article 31A: Saving of Laws providing for acquisition of estates, etc.',
              'This article ensures that laws related to the government taking land or property for public use are protected and can’t be easily challenged in court.'),
_buildArticle('Article 31B: Validation of certain Acts and Regulations',
              'This article says that some old laws or actions that were taken by the government before the Constitution was made are valid, even if they go against the Constitution.'),
_buildArticle('Article 31C: Saving of laws giving effect to certain directive principles',
              'This article ensures that laws made to help achieve important goals (like ending poverty or promoting education) are valid, even if they affect people’s rights.'),
_buildArticle('Article 31D: Saving of laws in respect of anti-national activities — [Omitted]',
              'This article was removed and is no longer part of the Constitution.'),

// Right to Constitutional Remedies
_buildArticle('Article 32: Remedies for enforcement of rights conferred by this Part',
              'This article gives people the right to go to the Supreme Court if their rights are not being respected. The court can help protect their rights.'),
_buildArticle('Article 32A: Constitutional validity of State laws not to be considered in proceedings under article 32 — [Omitted]',
              'This article was removed and is no longer part of the Constitution.'),
_buildArticle('Article 33: Power of Parliament to modify the rights conferred by this Part in their application to Forces, etc.',
              'This article gives Parliament the power to change or limit certain rights for the military, police, and other armed forces if needed.'),
_buildArticle('Article 34: Restriction on rights conferred by this Part while martial law is in force in any area',
              'This article says that some rights can be limited during martial law, which is when the military controls the law instead of the regular government.'),
_buildArticle('Article 35: Legislation to give effect to the provisions of this Part',
              'This article allows Parliament to make laws to protect and enforce the fundamental rights listed in this part of the Constitution.'),

          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
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
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
