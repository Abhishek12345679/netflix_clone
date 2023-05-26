import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:netflix_clone/models/profile.dart';

class ProfileSelectionScreen extends StatefulWidget {
  const ProfileSelectionScreen({super.key});

  @override
  State<ProfileSelectionScreen> createState() => _ProfileSelectionScreenState();
}

class _ProfileSelectionScreenState extends State<ProfileSelectionScreen> {
  // bool selected = false;
  late dynamic selectedIndex;
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
            onTapUp: (_) {
              setState(() {
                selectedIndex = null;
              });
            },
            child: GridTile(
                footer: Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: Text(
                    profile.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
                child: AnimatedContainer(
                  // height: selectedIndex == idx ? 80 : 100,
                  // width: selectedIndex == idx ? 80 : 100,
                  duration: Duration(milliseconds: 500),
                  margin: EdgeInsets.all(selectedIndex == idx ? 40 : 35),
                  decoration: BoxDecoration(
                    // color: selectedIndex == idx ? Colors.red : Colors.green,
                    image: DecorationImage(
                      image: NetworkImage(profile.profilePicture),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                )),
          );
        }).toList(),
      ),
      backgroundColor: Colors.black,
    );
  }
}
