import 'package:flutter/material.dart';
import 'package:netflix_clone/models/profile.dart';
import 'package:netflix_clone/pages/home_screen.dart';
import 'package:netflix_clone/widgets/user_profile_tile.dart';

class ProfileSelectionScreen extends StatefulWidget {
  const ProfileSelectionScreen({super.key});

  @override
  State<ProfileSelectionScreen> createState() => _ProfileSelectionScreenState();
}

class _ProfileSelectionScreenState extends State<ProfileSelectionScreen> {
  late int? selectedIndex = 0;

  final List<Profile> profiles = [
    Profile(
        'https://www.rainforest-alliance.org/wp-content/uploads/2021/06/capybara-square-1-400x400.jpg.webp',
        "OK I PULL UP"),
    Profile(
        'https://www.videomeme.in/wp-content/uploads/2023/04/happy-happy-happy-cat-1.jpg',
        "UR MOM MF"),
    Profile(
        'https://www.rainforest-alliance.org/wp-content/uploads/2021/06/capybara-square-1-400x400.jpg.webp',
        "OK I PULL UP"),
    Profile(
        'https://www.videomeme.in/wp-content/uploads/2023/04/happy-happy-happy-cat-1.jpg',
        "UR MOM MF"),
    Profile(
        'https://www.rainforest-alliance.org/wp-content/uploads/2021/06/capybara-square-1-400x400.jpg.webp',
        "OK I PULL UP"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Who's Watching",
          textAlign: TextAlign.center,
        ),
        elevation: 0,
        backgroundColor: Colors.black,
        actions: [
          TextButton(
            child: const Text(
              "Edit",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: profiles.asMap().entries.map((entry) {
          int idx = entry.key;
          Profile profile = entry.value;
          return GestureDetector(
            onTapDown: (_) {
              setState(() {
                selectedIndex = idx;
              });
            },
            onTapUp: (details) async {
              await Future.delayed(
                const Duration(milliseconds: 350),
                () {
                  setState(() {
                    selectedIndex = null;
                  });
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(profile: profile),
                    ),
                    (route) => false,
                  );
                },
              );
            },
            onLongPress: () {
              setState(() {
                selectedIndex = idx;
              });
            },
            onLongPressUp: () {
              setState(() {
                selectedIndex = null;
              });
            },
            child: UserProfileTile(
              currentIndex: idx,
              profile: profile,
              selectedIndex: selectedIndex,
            ),
          );
        }).toList(),
      ),
      backgroundColor: Colors.black,
    );
  }
}
