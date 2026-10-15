import 'package:flutter/material.dart';
import 'details_screen.dart';

class CategoryScreen extends StatelessWidget {
  final String categoryName;

  const CategoryScreen({
    super.key,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    final categoryInformation =
    _getCategoryInformation(categoryName);

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
        centerTitle: true,
      ),
      body: categoryInformation.isEmpty
          ? const Center(
        child: Text(
          'No information available.',
          style: TextStyle(fontSize: 18),
        ),
      )
          : ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: categoryInformation.length,
        itemBuilder: (context, index) {
          final item = categoryInformation[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: CircleAvatar(
                backgroundColor: Theme.of(context)
                    .colorScheme
                    .primaryContainer,
                child: Icon(
                  item['icon'],
                  color:
                  Theme.of(context).colorScheme.primary,
                ),
              ),
              title: Text(
                item['title'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(item['description']),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 17,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      title: item['title'],
                      description: item['description'],
                      icon: item['icon'],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  List<Map<String, dynamic>> _getCategoryInformation(
      String category,
      ) {
    switch (category) {
      case 'Education':
        return [
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
            'icon': Icons.menu_book,
            'title': 'Online Learning',
            'description':
            'Explore useful online learning resources and courses.',
          },
        ];

      case 'Jobs':
        return [
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
        ];

      case 'Events':
        return [
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
        ];

      case 'News':
        return [
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
        ];

      case 'Scholarships':
        return [
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
        ];

      case 'Government':
        return [
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
        ];

      case 'Technology':
        return [
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
        ];

      case 'Internships':
        return [
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

      default:
        return [];
    }
  }
}
