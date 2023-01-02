import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  final String email;
  final String uid;
  final String photoUrl;
  final String username;
  final String equipment;
  final String status;
  final List followers;
  final List following;
  final bool isActive;
  final bool isAdmin;
  User({
    required this.email,
    required this.uid,
    required this.photoUrl,
    required this.username,
    required this.followers,
    required this.following,
    this.status = 'nada',
    this.equipment = 'nada',
    this.isActive = true,
    this.isAdmin = false,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'email': email,
      'uid': uid,
      'photoUrl': photoUrl,
      'username': username,
      'equipment': equipment,
      'status': status,
      'followers': followers,
      'following': following,
      'isActive': isActive,
      'isAdmin': isAdmin,
    };
  }
}
