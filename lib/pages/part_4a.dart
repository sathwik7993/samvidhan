import 'package:flutter/material.dart';

class PartFourAPage extends StatelessWidget {
  const PartFourAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fundamental Duties'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main heading for Part 4A
            Text(
              'The Fundamental Duties of Indian citizens are important rules to help everyone be a good citizen. These rules are written in Article 51A of the Constitution of India, and they were added in 1976. Here’s what every citizen should do:',
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
            SizedBox(height: 20),

            // Article 1 with highlighted heading
            Text(
              '1. Follow the Constitution and respect our National Flag and National Anthem.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Highlight color for the article heading
              ),
            ),
            SizedBox(height: 10),

            // Article 2 with highlighted heading
            Text(
              '2. Remember and follow the good ideas that helped India become free.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),

            // Article 3 with highlighted heading
            Text(
              '3. Protect India’s unity and integrity, and be proud to be Indian.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),

            // Article 4 with highlighted heading
            Text(
              '4. Help defend the country and do your duty when needed.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),

            // Article 5 with highlighted heading
            Text(
              '5. Be friendly with everyone, no matter their religion or language, and treat each other like family.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),

            // Article 6 with highlighted heading
            Text(
              '6. Stop practices that disrespect women.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),

            // Article 7 with highlighted heading
            Text(
              '7. Value and take care of our rich culture and traditions.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),

            // Article 8 with highlighted heading
            Text(
              '8. Help protect the environment—like forests, rivers, and animals—and be kind to all living things.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),

            // Article 9 with highlighted heading
            Text(
              '9. Think scientifically, ask questions, and be open to new ideas.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),

            // Article 10 with highlighted heading
            Text(
              '10. Take care of public property and avoid violence.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),

            // Article 11 with highlighted heading
            Text(
              '11. Always try to do your best in everything, so our country can grow and improve.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),

            // Article 12 with highlighted heading
            Text(
              '12. Make sure your child goes to school if they are between the ages of 6 and 14.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),

            // Closing text
            Text(
              'These duties remind us to be responsible and care for our country and our communities!',
              style: TextStyle(fontSize: 18, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
