import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final Function(bool) onThemeChanged;
  final bool isDarkMode;

  const ProfileScreen({
    super.key,
    required this.onThemeChanged,
    required this.isDarkMode,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String userName = 'Welcome User';
  String email = 'user@example.com';

  void _editProfile() {
    final nameController =
    TextEditingController(text: userName);
    final emailController =
    TextEditingController(text: email);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Profile'),

          content: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ],
            ),
          ),

          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  userName =
                  nameController.text.trim().isEmpty
                      ? 'Welcome User'
                      : nameController.text.trim();

                  email =
                  emailController.text.trim().isEmpty
                      ? 'user@example.com'
                      : emailController.text.trim();
                });

                Navigator.pop(context);

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content:
                    Text('Profile updated successfully'),
                  ),
                );
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void _showAbout() {
    showAboutDialog(
      context: context,
      applicationName: 'Info Bridge',
      applicationVersion: '1.0.0',
      applicationIcon: const Icon(
        Icons.info,
        size: 40,
        color: Colors.blue,
      ),
      children: const [
        Text(
          'Info Bridge brings useful information together '
              'in one simple application.',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 10),

          Center(
            child: CircleAvatar(
              radius: 55,
              backgroundColor:
              Theme.of(context)
                  .colorScheme
                  .primary,
              child: const Icon(
                Icons.person,
                size: 65,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 15),

          Center(
            child: Text(
              userName,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 5),

          Center(
            child: Text(
              email,
              style: TextStyle(
                color: Theme.of(context)
                    .colorScheme
                    .onSurfaceVariant,
              ),
            ),
          ),

          const SizedBox(height: 30),

          Card(
            child: ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Edit Profile'),
              subtitle:
              const Text('Update your name and email'),
              trailing:
              const Icon(Icons.arrow_forward_ios),
              onTap: _editProfile,
            ),
          ),

          Card(
            child: SwitchListTile(
              secondary: const Icon(Icons.dark_mode),
              title: const Text('Dark Mode'),
              subtitle:
              const Text('Change the application theme'),
              value: widget.isDarkMode,
              onChanged: widget.onThemeChanged,
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('About Info Bridge'),
              subtitle:
              const Text('Application information'),
              trailing:
              const Icon(Icons.arrow_forward_ios),
              onTap: _showAbout,
            ),
          ),

          Card(
            child: ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              subtitle:
              const Text('Application settings'),
              trailing:
              const Icon(Icons.arrow_forward_ios),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content:
                    Text('More settings coming soon'),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 25),

          Center(
            child: Text(
              'Info Bridge',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context)
                    .colorScheme
                    .primary,
              ),
            ),
          ),

          const SizedBox(height: 5),

          const Center(
            child: Text(
              'Version 1.0.0',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
