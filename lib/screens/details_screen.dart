import 'package:flutter/material.dart';
import '../data/information_data.dart';
import '../data/app_data.dart';

class DetailsScreen extends StatefulWidget {
  final String title;
  final String description;
  final IconData icon;

  const DetailsScreen({
    super.key,
    required this.title,
    required this.description,
    this.icon = Icons.info,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  InformationData? get information {
    try {
      return informationList.firstWhere(
            (item) => item.title == widget.title,
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final info = information;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Information Details'),
        centerTitle: true,
      ),
      body: info == null
          ? _basicDetails(context)
          : _fullDetails(context, info),
    );
  }

  // ----------------------------------------------------------
  // BASIC DETAILS
  // Used if information is not found in information_data.dart
  // ----------------------------------------------------------

  Widget _basicDetails(BuildContext context) {
    final saved = AppData.isSaved(widget.title);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _iconSection(context, widget.icon),

          const SizedBox(height: 25),

          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          _sectionCard(
            context,
            title: 'Description',
            icon: Icons.description_outlined,
            child: Text(
              widget.description,
              style: const TextStyle(
                fontSize: 17,
                height: 1.6,
              ),
            ),
          ),

          const SizedBox(height: 20),

          _saveButton(
            context,
            saved,
          ),
        ],
      ),
    );
  }

  // ----------------------------------------------------------
  // FULL DETAILS
  // ----------------------------------------------------------

  Widget _fullDetails(
      BuildContext context,
      InformationData info,
      ) {
    final saved = AppData.isSaved(info.title);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ICON
          _iconSection(context, info.icon),

          const SizedBox(height: 25),

          // TITLE
          Text(
            info.title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          // SHORT DESCRIPTION
          Text(
            info.description,
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context)
                  .colorScheme
                  .onSurfaceVariant,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 25),

          // INTRODUCTION
          _sectionCard(
            context,
            title: 'Introduction',
            icon: Icons.info_outline,
            child: Text(
              info.introduction,
              style: const TextStyle(
                fontSize: 17,
                height: 1.6,
              ),
            ),
          ),

          const SizedBox(height: 15),

          // WHAT YOU WILL LEARN
          _sectionCard(
            context,
            title: 'What You Will Learn',
            icon: Icons.school_outlined,
            child: Column(
              children: info.whatYouWillLearn.map(
                    (item) {
                  return _bulletItem(
                    context,
                    item,
                  );
                },
              ).toList(),
            ),
          ),

          const SizedBox(height: 15),

          // REQUIREMENTS
          _sectionCard(
            context,
            title: 'Requirements',
            icon: Icons.checklist,
            child: Text(
              info.requirements,
              style: const TextStyle(
                fontSize: 17,
                height: 1.6,
              ),
            ),
          ),

          const SizedBox(height: 15),

          // BENEFITS
          _sectionCard(
            context,
            title: 'Benefits',
            icon: Icons.star_outline,
            child: Column(
              children: info.benefits.map(
                    (item) {
                  return _bulletItem(
                    context,
                    item,
                  );
                },
              ).toList(),
            ),
          ),

          const SizedBox(height: 25),

          // SAVE BUTTON
          _saveButton(
            context,
            saved,
          ),

          const SizedBox(height: 12),

          // SHARE BUTTON
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Share feature can be connected later.',
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.share_outlined),
              label: const Text(
                'Share Information',
                style: TextStyle(fontSize: 16),
              ),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
          ),

          const SizedBox(height: 25),

          Center(
            child: Text(
              'Info Bridge • Useful information in one place',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: Theme.of(context)
                    .colorScheme
                    .onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ----------------------------------------------------------
  // ICON
  // ----------------------------------------------------------

  Widget _iconSection(
      BuildContext context,
      IconData icon,
      ) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: Theme.of(context)
              .colorScheme
              .primaryContainer,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 70,
          color: Theme.of(context)
              .colorScheme
              .primary,
        ),
      ),
    );
  }

  // ----------------------------------------------------------
  // SECTION CARD
  // ----------------------------------------------------------

  Widget _sectionCard(
      BuildContext context, {
        required String title,
        required IconData icon,
        required Widget child,
      }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: Theme.of(context)
                      .colorScheme
                      .primary,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 14),

            child,
          ],
        ),
      ),
    );
  }

  // ----------------------------------------------------------
  // BULLET ITEM
  // ----------------------------------------------------------

  Widget _bulletItem(
      BuildContext context,
      String text,
      ) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Row(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.check_circle,
            size: 20,
            color: Theme.of(context)
                .colorScheme
                .primary,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ----------------------------------------------------------
  // SAVE BUTTON
  // ----------------------------------------------------------

  Widget _saveButton(
      BuildContext context,
      bool saved,
      ) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () {
          setState(() {
            AppData.toggleSaved(
              icon: widget.icon,
              title: widget.title,
              description: widget.description,
            );
          });

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                saved
                    ? 'Removed from saved information'
                    : 'Information saved successfully',
              ),
            ),
          );
        },
        icon: Icon(
          saved
              ? Icons.bookmark
              : Icons.bookmark_border,
        ),
        label: Text(
          saved
              ? 'Remove from Saved'
              : 'Save Information',
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
