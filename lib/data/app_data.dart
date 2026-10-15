import 'package:flutter/material.dart';

class AppData {
  static final List<Map<String, dynamic>> savedInformation = [];

  static bool isSaved(String title) {
    return savedInformation.any(
          (item) => item['title'] == title,
    );
  }

  static void toggleSaved({
    required IconData icon,
    required String title,
    required String description,
  }) {
    final index = savedInformation.indexWhere(
          (item) => item['title'] == title,
    );

    if (index >= 0) {
      savedInformation.removeAt(index);
    } else {
      savedInformation.add({
        'icon': icon,
        'title': title,
        'description': description,
      });
    }
  }
}
