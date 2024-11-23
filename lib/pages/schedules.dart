import 'package:flutter/material.dart';

class SchedulesPage extends StatelessWidget {
  const SchedulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedules of the Constitution of India'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Schedules of the Constitution of India',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'The Constitution of India has 12 Schedules. These Schedules list various details, rules, and guidelines that are part of the Constitution. Let’s take a look at each Schedule in simple terms:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildSchedule('First Schedule', [
              'The States – This part lists all the states in India.',
              'The Union Territories – This part lists all the union territories in India.'
            ]),
            _buildSchedule('Second Schedule', [
              'Part A: Provisions as to the President and the Governors of States – This part explains how the President of India and the Governors of states are chosen, and what their duties are.',
              'Part B: [Omitted] – This part was removed and is no longer part of the Constitution.',
              'Part C: Provisions as to the Speaker and the Deputy Speaker of the House of the People and the Chairman and the Deputy Chairman of the Council of States and the Speaker and the Deputy Speaker of the Legislative Assembly and the Chairman and the Deputy Chairman of the Legislative Council of a State – This part explains how the Speaker and Deputy Speaker of the Lok Sabha (House of the People) and Rajya Sabha (Council of States), as well as in state assemblies, are chosen, and what their roles are.',
              'Part D: Provisions as to the Judges of the Supreme Court and of the High Courts – This part explains the rules for appointing judges to the Supreme Court and High Courts.',
              'Part E: Provisions as to the Comptroller and Auditor-General of India – This part talks about the Comptroller and Auditor-General, who checks and audits government spending.'
            ]),
            _buildSchedule('Third Schedule', [
              'Forms of Oaths or Affirmations – This part gives the official words of the oath or affirmation that people like the President, judges, and others must say when they take office.'
            ]),
            _buildSchedule('Fourth Schedule', [
              'Allocation of seats in the Council of States – This part lists how many seats each state and union territory gets in the Rajya Sabha (Council of States).'
            ]),
            _buildSchedule('Fifth Schedule', [
              'Provisions as to the Administration and Control of Scheduled Areas and Scheduled Tribes:',
              'Part A: General – General rules about how areas with tribal populations should be managed.',
              'Part B: Administration and Control of Scheduled Areas and Scheduled Tribes – Specific rules on how the government should handle these areas and protect tribal people.',
              'Part C: Scheduled Areas – It lists areas that have a large number of tribal people and need special rules to protect them.',
              'Part D: Amendment of the Schedule – Explains how changes can be made to this Schedule if needed.'
            ]),
            _buildSchedule('Sixth Schedule', [
              'Provisions as to the Administration of Tribal Areas in the States of Assam, Meghalaya, Tripura, and Mizoram – This part talks about how tribal areas in these states should be governed, with special protections and rules to help the tribal communities.'
            ]),
            _buildSchedule('Seventh Schedule', [
              'List I: Union List – This list shows subjects on which only the central government can make laws (like defense and foreign affairs).',
              'List II: State List – This list shows subjects on which only state governments can make laws (like police and agriculture).',
              'List III: Concurrent List – This list shows subjects on which both the central and state governments can make laws (like education and criminal law).'
            ]),
            _buildSchedule('Eighth Schedule', [
              'Languages – This part lists the official languages of India. It mentions which languages can be used for official purposes, including Hindi, English, and regional languages.'
            ]),
            _buildSchedule('Ninth Schedule', [
              'Validation of Certain Acts and Regulations – This part helps protect certain laws from being challenged in court. If a law is in this Schedule, it cannot be easily questioned.'
            ]),
            _buildSchedule('Tenth Schedule', [
              'Provisions as to Disqualification on Ground of Defection – This part explains the rules for when a person can be disqualified from being a member of Parliament or a state legislature if they switch political parties.'
            ]),
            _buildSchedule('Eleventh Schedule', [
              'Powers, Authority, and Responsibilities of Panchayats – This part explains the powers and duties of Panchayats (local village or town councils) in rural areas.'
            ]),
            _buildSchedule('Twelfth Schedule', [
              'Powers, Authority, and Responsibilities of Municipalities – This part explains the powers and duties of Municipalities (local governments in cities and towns).'
            ]),
            const SizedBox(height: 20),
            const Text(
              'These Schedules list the details of important rules and regulations that help the Constitution work smoothly. They cover everything from the organization of the government to the protection of languages and local governments.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSchedule(String scheduleTitle, List<String> points) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            scheduleTitle,
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
