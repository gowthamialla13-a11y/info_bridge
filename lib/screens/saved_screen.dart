import 'package:flutter/material.dart';
import '../main.dart';
import 'details_screen.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    final savedItems = AppData.savedItems;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Information'),
        centerTitle: true,
      ),

      body: savedItems.isEmpty
          ? Center(
        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: [
            Icon(
              Icons.bookmark_border,
              size: 80,
              color: Theme.of(context)
                  .colorScheme
                  .primary,
            ),
            const SizedBox(height: 15),
            const Text(
              'No saved information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Save useful information to see it here.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      )
          : ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: savedItems.length,
        itemBuilder: (context, index) {
          final item = savedItems[index];

          return Card(
            margin:
            const EdgeInsets.only(bottom: 12),
            child: ListTile(
              contentPadding:
              const EdgeInsets.all(10),

              leading: CircleAvatar(
                backgroundColor:
                Theme.of(context)
                    .colorScheme
                    .primaryContainer,
                child: Icon(
                  item['icon'],
                  color: Theme.of(context)
                      .colorScheme
                      .primary,
                ),
              ),

              title: Text(
                item['title'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              subtitle: Padding(
                padding:
                const EdgeInsets.only(top: 5),
                child: Text(
                  item['description'],
                ),
              ),

              trailing: IconButton(
                icon: const Icon(
                  Icons.bookmark,
                  color: Colors.blue,
                ),
                onPressed: () {
                  setState(() {
                    AppData.toggleSaved(
                      icon: item['icon'],
                      title: item['title'],
                      description:
                      item['description'],
                    );
                  });
                },
              ),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsScreen(
                          title: item['title'],
                          description:
                          item['description'],
                          icon: item['icon'],
                        ),
                  ),
                ).then((_) {
                  setState(() {});
                });
              },
            ),
          );
        },
      ),
    );
  }
}
