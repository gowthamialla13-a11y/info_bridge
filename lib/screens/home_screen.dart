import 'package:flutter/material.dart';
import 'details_screen.dart';
import 'category_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> information = [
    {
      'icon': Icons.school,
      'title': 'Flutter Course',
      'description':
      'Learn Flutter from basic to advanced level.',
    },
    {
      'icon': Icons.book,
      'title': 'Programming Resources',
      'description':
      'Useful programming learning resources for students.',
    },
    {
      'icon': Icons.computer,
      'title': 'Online Learning',
      'description':
      'Explore useful online learning resources and courses.',
    },
    {
      'icon': Icons.work,
      'title': 'Software Developer Jobs',
      'description':
      'Explore software development job opportunities.',
    },
    {
      'icon': Icons.business_center,
      'title': 'Career Opportunities',
      'description':
      'Find career opportunities in different industries.',
    },
    {
      'icon': Icons.work_outline,
      'title': 'Fresher Jobs',
      'description':
      'Explore job opportunities suitable for fresh graduates.',
    },
    {
      'icon': Icons.event,
      'title': 'Upcoming Events',
      'description':
      'Check upcoming technical and educational events.',
    },
    {
      'icon': Icons.groups,
      'title': 'Community Events',
      'description':
      'Discover community meetings and networking events.',
    },
    {
      'icon': Icons.calendar_month,
      'title': 'Workshops',
      'description':
      'Find useful workshops, seminars and training programs.',
    },
    {
      'icon': Icons.campaign,
      'title': 'Technology News',
      'description':
      'Read the latest technology-related information.',
    },
    {
      'icon': Icons.newspaper,
      'title': 'Education News',
      'description':
      'Stay updated with important education news.',
    },
    {
      'icon': Icons.public,
      'title': 'General News',
      'description':
      'Get useful updates and important information.',
    },
    {
      'icon': Icons.workspace_premium,
      'title': 'Student Scholarships',
      'description':
      'Find scholarship opportunities for eligible students.',
    },
    {
      'icon': Icons.school,
      'title': 'Higher Education Scholarships',
      'description':
      'Explore scholarship opportunities for higher education.',
    },
    {
      'icon': Icons.card_giftcard,
      'title': 'Merit Scholarships',
      'description':
      'Learn about scholarships based on academic performance.',
    },
    {
      'icon': Icons.account_balance,
      'title': 'Government Schemes',
      'description':
      'Learn about useful government schemes and services.',
    },
    {
      'icon': Icons.groups,
      'title': 'Student Welfare Schemes',
      'description':
      'Explore schemes designed to support students.',
    },
    {
      'icon': Icons.info_outline,
      'title': 'Public Services',
      'description':
      'Find information about useful public services.',
    },
    {
      'icon': Icons.computer,
      'title': 'Latest Technology',
      'description':
      'Explore new technologies and digital trends.',
    },
    {
      'icon': Icons.phone_android,
      'title': 'Mobile App Development',
      'description':
      'Learn about modern mobile application development.',
    },
    {
      'icon': Icons.smart_toy,
      'title': 'Artificial Intelligence',
      'description':
      'Explore artificial intelligence and modern AI technologies.',
    },
    {
      'icon': Icons.business_center,
      'title': 'Software Internships',
      'description':
      'Discover internship opportunities in software development.',
    },
    {
      'icon': Icons.computer,
      'title': 'Technology Internships',
      'description':
      'Explore internships in technology and IT fields.',
    },
    {
      'icon': Icons.school,
      'title': 'Student Internships',
      'description':
      'Find internship opportunities suitable for students.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info Bridge'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to Info Bridge 👋',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Find useful information in one place.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Categories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                Expanded(
                  child: _categoryCard(
                    context,
                    Icons.school,
                    'Education',
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _categoryCard(
                    context,
                    Icons.work,
                    'Jobs',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: _categoryCard(
                    context,
                    Icons.event,
                    'Events',
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _categoryCard(
                    context,
                    Icons.campaign,
                    'News',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: _categoryCard(
                    context,
                    Icons.workspace_premium,
                    'Scholarships',
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _categoryCard(
                    context,
                    Icons.account_balance,
                    'Government',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: _categoryCard(
                    context,
                    Icons.computer,
                    'Technology',
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _categoryCard(
                    context,
                    Icons.business_center,
                    'Internships',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            const Text(
              'Latest Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            ...information.map(
                  (item) => _infoCard(
                context,
                item['icon'],
                item['title'],
                item['description'],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _categoryCard(
      BuildContext context,
      IconData icon,
      String title,
      ) {
    return Card(
      elevation: 3,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryScreen(
                categoryName: title,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              Icon(
                icon,
                size: 35,
                color: Colors.blue,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoCard(
      BuildContext context,
      IconData icon,
      String title,
      String description,
      ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 3,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue.shade100,
          child: Icon(
            icon,
            color: Colors.blue,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(description),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(
                title: title,
                description: description,
              ),
            ),
          );
        },
      ),
    );
  }
}
