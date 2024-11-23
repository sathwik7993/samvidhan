import 'package:flutter/material.dart';

class AppendicesPage extends StatelessWidget {
  const AppendicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appendices of the Constitution of India'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Appendices of the Constitution of India',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'The Appendices are additional parts of the Constitution that include special amendments or orders that were made after the Constitution was written. These deal with specific changes or actions taken over time.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildAppendix('Appendix I', [
              'The Constitution (One Hundredth Amendment) Act, 2015 – This appendix talks about the 100th amendment to the Constitution, which was passed in 2015. This amendment changed certain laws to make things more updated and better for the country.'
            ]),
            _buildAppendix('Appendix II', [
              'The Constitution (Application to Jammu and Kashmir) Order, 2019 – This appendix is about a special Order in 2019 that explained how the Constitution would apply to the region of Jammu and Kashmir. It made important changes to how this state was treated under Indian law.'
            ]),
            _buildAppendix('Appendix III', [
              'Declaration under Article 370(3) of the Constitution – This appendix talks about the declaration made under Article 370(3). Article 370 was a special part of the Constitution that gave Jammu and Kashmir a unique status. This declaration was made to end that special status and bring Jammu and Kashmir fully under the same laws as the rest of India.'
            ]),
            const SizedBox(height: 20),
            const Text(
              'These Appendices show how the Constitution has changed or been updated over time to address specific situations or areas in India.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppendix(String appendixTitle, List<String> points) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            appendixTitle,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 5),
          for (var point in points)
            Text(
              '• $point',
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
