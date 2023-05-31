import 'package:flutter/material.dart';
import 'package:netflix_clone/models/profile.dart';

class UserProfileTile extends StatelessWidget {
  late final int? selectedIndex;
  final int currentIndex;
  final Profile profile;

  UserProfileTile({
    super.key,
    required this.selectedIndex,
    required this.profile,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: Padding(
        padding: const EdgeInsets.only(left: 35.0),
        child: Text(
          profile.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: EdgeInsets.all(
          selectedIndex == currentIndex ? 40 : 35,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(profile.profilePicture),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
