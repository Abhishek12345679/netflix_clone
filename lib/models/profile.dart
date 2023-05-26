// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Profile {
  final String profilePicture;
  final String name;

  //other fields

  Profile(this.profilePicture, this.name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profile_picture': profilePicture,
      'name': name,
    };
  }

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      map['profile_picture'] as String,
      map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Profile.fromJson(String source) =>
      Profile.fromMap(json.decode(source) as Map<String, dynamic>);
}
