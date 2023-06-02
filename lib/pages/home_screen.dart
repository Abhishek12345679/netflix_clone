import 'package:flutter/material.dart';
import 'package:netflix_clone/models/profile.dart';

class HomeScreen extends StatefulWidget {
  final Profile profile;

  const HomeScreen({super.key, required this.profile});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          'For OK I PULL UP',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.profile.profilePicture),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.red[500],
              ),
            ),
            SizedBox(
              height: 175,
              width: double.infinity,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final currentProfile = profiles.elementAt(index);
                  return Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 100,
                    width: 125,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.profile.profilePicture),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
