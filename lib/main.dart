import 'package:flutter/material.dart';
import 'package:netflix_clone/pages/profile_selection_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfileSelectionScreen(),
    );
  }
}
