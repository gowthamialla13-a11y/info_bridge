import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/saved_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const InfoBridgeApp());
}

// ------------------------------------------------------------
// GLOBAL APP DATA
// ------------------------------------------------------------

class AppData {
  static final List<Map<String, dynamic>> savedItems = [
    {
      'icon': Icons.school,
      'title': 'Flutter Course',
      'description': 'Learn Flutter from basic to advanced level.',
    },
    {
      'icon': Icons.work,
      'title': 'Latest Job Opportunities',
      'description': 'Find new job opportunities and career information.',
    },
  ];

  static bool isSaved(String title) {
    return savedItems.any((item) => item['title'] == title);
  }

  static void toggleSaved({
    required IconData icon,
    required String title,
    required String description,
  }) {
    final index = savedItems.indexWhere(
          (item) => item['title'] == title,
    );

    if (index >= 0) {
      savedItems.removeAt(index);
    } else {
      savedItems.add({
        'icon': icon,
        'title': title,
        'description': description,
      });
    }
  }
}

// ------------------------------------------------------------
// APP
// ------------------------------------------------------------

class InfoBridgeApp extends StatefulWidget {
  const InfoBridgeApp({super.key});

  @override
  State<InfoBridgeApp> createState() => _InfoBridgeAppState();
}

class _InfoBridgeAppState extends State<InfoBridgeApp> {
  ThemeMode themeMode = ThemeMode.light;

  void changeTheme(bool darkMode) {
    setState(() {
      themeMode = darkMode ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF1565C0);

    final lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: const Color(0xFFF6F8FC),
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      cardTheme: CardThemeData(
        elevation: 2,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: Color(0xFFE0E0E0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(
            color: primaryColor,
            width: 2,
          ),
        ),
      ),
      navigationBarTheme: const NavigationBarThemeData(
        backgroundColor: Colors.white,
        indicatorColor: Color(0xFFD6E8FF),
      ),
    );

    final darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.dark,
      ),
      cardTheme: CardThemeData(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
      ),
      navigationBarTheme: const NavigationBarThemeData(
        indicatorColor: Color(0xFF244B73),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Info Bridge',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      home: MainScreen(
        onThemeChanged: changeTheme,
        isDarkMode: themeMode == ThemeMode.dark,
      ),
    );
  }
}

// ------------------------------------------------------------
// MAIN NAVIGATION
// ------------------------------------------------------------

class MainScreen extends StatefulWidget {
  final Function(bool) onThemeChanged;
  final bool isDarkMode;

  const MainScreen({
    super.key,
    required this.onThemeChanged,
    required this.isDarkMode,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      const HomeScreen(),
      const SavedScreen(),
      ProfileScreen(
        onThemeChanged: widget.onThemeChanged,
        isDarkMode: widget.isDarkMode,
      ),
    ];

    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmark_border),
            selectedIcon: Icon(Icons.bookmark),
            label: 'Saved',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
