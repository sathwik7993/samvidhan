import 'package:flutter/material.dart';
import 'package:flutter_sip_0_2/constitution_data.dart';
import 'package:flutter_sip_0_2/pages/AboutConstitution.dart';
import 'package:flutter_sip_0_2/pages/appendices.dart';
import 'package:flutter_sip_0_2/pages/game_page.dart';
import 'package:flutter_sip_0_2/pages/part_1.dart';
import 'package:flutter_sip_0_2/pages/part_16.dart';
import 'package:flutter_sip_0_2/pages/part_17.dart';
import 'package:flutter_sip_0_2/pages/part_18.dart';
import 'package:flutter_sip_0_2/pages/part_19.dart';
import 'package:flutter_sip_0_2/pages/part_2.dart';
import 'package:flutter_sip_0_2/pages/part_20.dart';
import 'package:flutter_sip_0_2/pages/part_21.dart';
import 'package:flutter_sip_0_2/pages/part_22.dart';
import 'package:flutter_sip_0_2/pages/part_3.dart';
import 'package:flutter_sip_0_2/pages/part_4.dart';
import 'package:flutter_sip_0_2/pages/part_4a.dart';
import 'package:flutter_sip_0_2/pages/preamble_page.dart';
import 'package:flutter_sip_0_2/pages/part_5.dart';
import 'package:flutter_sip_0_2/pages/part_6.dart';
import 'package:flutter_sip_0_2/pages/part_7.dart';
import 'package:flutter_sip_0_2/pages/part_8.dart';
import 'package:flutter_sip_0_2/pages/part_9.dart';
import 'package:flutter_sip_0_2/pages/part_9a.dart';
import 'package:flutter_sip_0_2/pages/part_9b.dart';
import 'package:flutter_sip_0_2/pages/part_10.dart';
import 'package:flutter_sip_0_2/pages/part_11.dart';
import 'package:flutter_sip_0_2/pages/part_12.dart';
import 'package:flutter_sip_0_2/pages/part_13.dart';
import 'package:flutter_sip_0_2/pages/part_14.dart';
import 'package:flutter_sip_0_2/pages/part_15.dart';
import 'package:flutter_sip_0_2/pages/schedules.dart';


class ConstitutionPart {
  final String title;
  final String description;

  ConstitutionPart({required this.title, required this.description});
}

final List<ConstitutionPart> constitutionParts = [
  ConstitutionPart(
    title: 'Preamble',
    description: 'The introduction to the Constitution of India, outlining its objectives and guiding principles.',
  ),
  ConstitutionPart(
    title: 'Part I',
    description: 'The Union and its Territory.',
  ),
  ConstitutionPart(
    title: 'Part II',
    description: 'Citizenship.',
  ),
  ConstitutionPart(
    title: 'Part III',
    description: 'Fundamental Rights.',
  ),
  ConstitutionPart(
    title: 'Part IV',
    description: 'Directive Principles of State Policy.',
  ),
  ConstitutionPart(
    title: 'Part 4A',
    description: 'Fundamental Duties.',
  ),
  // Add other parts similarly
  ConstitutionPart(
    title: 'Part V',
    description:
        'The Union: Explains the central government and its powers, including the President, Parliament, and judiciary.',
  ),
  ConstitutionPart(
    title: 'Part VI',
    description:
        'The States: Discusses state governments, their powers, and the role of the Governor.',
  ),
  ConstitutionPart(
    title: 'Part VII',
    description: 'States in the First Schedule: [Omitted after amendments].',
  ),
  ConstitutionPart(
    title: 'Part VIII',
    description:
        'The Union Territories: Covers the administration of Union Territories.',
  ),
  ConstitutionPart(
    title: 'Part IX',
    description:
        'The Panchayats: Talks about local self-government in villages.',
  ),
  ConstitutionPart(
    title: 'Part IXA',
    description: 'The Municipalities: Discusses urban local governance.',
  ),
  ConstitutionPart(
    title: 'Part IXB',
    description:
        'The Co-operative Societies: Covers rules about co-operative societies.',
  ),
  ConstitutionPart(
    title: 'Part X',
    description:
        'Scheduled and Tribal Areas: Protects the rights of people in tribal and scheduled areas.',
  ),
  ConstitutionPart(
    title: 'Part XI',
    description:
        'Relations Between the Union and the States: Explains how the central and state governments work together.',
  ),
  ConstitutionPart(
    title: 'Part XII',
    description:
        'Finance, Property, Contracts, and Suits: Covers taxes and how money is shared between the Union and states.',
  ),
  ConstitutionPart(
    title: 'Part XIII',
    description:
        'Trade and Commerce: Ensures free trade and commerce across India.',
  ),
  ConstitutionPart(
    title: 'Part XIV',
    description:
        'Services Under the Union and States: Talks about government jobs and recruitment.',
  ),
  ConstitutionPart(
    title: 'Part XV',
    description: 'Elections: Describes how elections are conducted in India.',
  ),
  ConstitutionPart(
  title: 'Part XVI',
  description: 'Special Provisions: Details special rights and benefits for certain communities.',
),
ConstitutionPart(
  title: 'Part XVII',
  description: 'Official Language: Explains the use of languages in government work.',
),
ConstitutionPart(
  title: 'Part XVIII',
  description: 'Emergency Provisions: Explains government powers during emergencies.',
),
ConstitutionPart(
  title: 'Part XIX',
  description: 'Miscellaneous: Covers additional provisions like protection for Presidents and Governors.',
),
ConstitutionPart(
  title: 'Part XX',
  description: 'Amendment: Explains how the Constitution can be changed or updated.',
),
ConstitutionPart(
  title: 'Part XXI',
  description: 'Temporary, Transitional, and Special Provisions',
),
ConstitutionPart(
  title: 'Part XXII',
  description: 'Short Title, Commencement, Authoritative Text in Hindi, and Repeals',
),
ConstitutionPart(
  title: 'Schedules of the Constitution',
  description: 'Details of the 12 Schedules of the Constitution of India',
),
ConstitutionPart(
  title: 'Appendices of the Constitution',
  description: 'Details of the Appendices of the Constitution of India',
),


];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  bool isDropdownVisible = false;
  bool isSearching = false;
  List<ConstitutionArticle> filteredArticles = constitutionArticles;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterArticles);
  }

  void _filterArticles() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      filteredArticles = constitutionArticles.where((article) {
        return article.article.toLowerCase().contains(query) ||
               article.description.toLowerCase().contains(query) ||
               article.part.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearching
            ? TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  hintText: 'Search Articles...',
                  border: InputBorder.none,
                ),
              )
            : const Text('Constitution of India'),
        actions: [
          IconButton(
            icon: Icon(isSearching ? Icons.close : Icons.search),
            onPressed: () {
              setState(() {
                isSearching = !isSearching;
                if (!isSearching) {
                  _searchController.clear();
                  filteredArticles = constitutionArticles;
                }
              });
            },
          ),
        ],
      ),
      drawer: _buildDrawer(context),
      body: isSearching ? _buildSearchResults() : _buildBody(context),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          _buildDrawerItem(
  icon: Icons.home,
  title: 'Home',
  onTap: () {
    Navigator.pop(context); // Close the drawer
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  },
),

         _buildDrawerItem(
  icon: Icons.book,
  title: 'About Constitution',
  onTap: () {
    Navigator.pop(context);  // Close the drawer
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AboutConstitutionPage(),  // Navigate to About Constitution page
      ),
    );
    debugPrint('About Constitution pressed');
  },
),

          _buildDrawerItem(
            icon: Icons.info,
            title: 'About Us',
            onTap: () {
              Navigator.pop(context);
              debugPrint('About Us pressed');
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView( // Wrapping the body with a scrollable widget
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to the Constitution of India',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            _buildActionButtons(),
            const SizedBox(height: 10),
            _buildExpandableContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchResults() {
    return ListView.builder(
      itemCount: filteredArticles.length,
      itemBuilder: (context, index) {
        final article = filteredArticles[index];
        return ListTile(
          title: Text(article.article),
          subtitle: Text(article.description),
          onTap: () {
            // Navigate to a page showing the full details of the article
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ArticleDetailPage(article: article),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GamePage(),
              ),
            );
          },
          child: const Text('Start Exploring'),
        ),
        const SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            setState(() {
              isDropdownVisible = !isDropdownVisible;
            });
          },
          child: const Text('Start Reading'),
        ),
      ],
    );
  }

  Widget _buildExpandableContent() {
    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      child: isDropdownVisible
          ? ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: constitutionParts.length,
              itemBuilder: (context, index) {
                final part = constitutionParts[index];
                return ListTile(
                  leading: const Icon(Icons.book),
                  title: Text(part.title),
                  subtitle: Text(part.description),
                  onTap: () {
                    if (part.title == "Preamble") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PreamblePage(),
                        ),
                      );
                    } else if (part.title == "Part I") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PartOnePage(),
                        ),
                      );
                    } else if (part.title == "Part II") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PartTwoPage(),
                        ),
                      );
                    } else if (part.title == "Part III") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PartThreePage(),
                        ),
                      );
                    } else if (part.title == "Part IV") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PartFourPage(),
                        ),
                      );
                    } else if (part.title == "Part 4A") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PartFourAPage(), // Navigate to Part 4A Page
                        ),
                      );
                    } else if (part.title == "Part V") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartFivePage(),
    ),
  );
} else if (part.title == "Part VI") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartSixPage(),
    ),
  );
} else if (part.title == "Part VII") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartSevenPage(),
    ),
  );
} else if (part.title == "Part VIII") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartEightPage(),
    ),
  );
} else if (part.title == "Part IX") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartNinePage(),
    ),
  );
} else if (part.title == "Part IXA") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartNineAPage(),
    ),
  );
} else if (part.title == "Part IXB") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartNineBPage(),
    ),
  );
} else if (part.title == "Part X") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartTenPage(),
    ),
  );
} else if (part.title == "Part XI") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartElevenPage(),
    ),
  );
} else if (part.title == "Part XII") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartTwelvePage(),
    ),
  );
} else if (part.title == "Part XIII") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartThirteenPage(),
    ),
  );
} else if (part.title == "Part XIV") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartFourteenPage(),
    ),
  );
} else if (part.title == "Part XV") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartFifteenPage(),
    ),
  );
}else if (part.title == "Part XVI") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartSixteenPage(),
    ),
  );
}else if (part.title == "Part XVII") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartSeventeenPage(),
    ),
  );
}else if (part.title == "Part XVIII") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartEighteenPage(),
    ),
  );
}else if (part.title == "Part XIX") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartNineteenPage(),
    ),
  );
}else if (part.title == "Part XX") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartTwentyPage(),
    ),
  );
}else if (part.title == "Part XXI") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartTwentyOnePage(),
    ),
  );
}else if (part.title == "Part XXII") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const PartTwentyTwoPage(),
    ),
  );
}else if (part.title == "Schedules of the Constitution") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const SchedulesPage(),
    ),
  );
}else if (part.title == "Appendices of the Constitution") {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const AppendicesPage(),
    ),
  );
}


                  },
                );
              },
            )
          : const SizedBox.shrink(),
    );
  }
}

class ArticleDetailPage extends StatelessWidget {
  final ConstitutionArticle article;

  const ArticleDetailPage({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(article.article)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(article.description, style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 20),
            Text(article.fullDetails, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}