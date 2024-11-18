import 'package:flutter/material.dart';
import 'package:flutter_sip_0_2/constitution_data.dart';
import 'package:flutter_sip_0_2/pages/game_page.dart';
import 'package:flutter_sip_0_2/pages/part_1.dart';
import 'package:flutter_sip_0_2/pages/part_2.dart';
import 'package:flutter_sip_0_2/pages/part_3.dart';
import 'package:flutter_sip_0_2/pages/part_4.dart';
import 'package:flutter_sip_0_2/pages/part_4a.dart';
import 'package:flutter_sip_0_2/pages/preamble_page.dart';

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
            onTap: () => Navigator.pop(context),
          ),
          _buildDrawerItem(
            icon: Icons.book,
            title: 'About Constitution',
            onTap: () {
              Navigator.pop(context);
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
