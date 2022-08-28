import 'package:voip_chat/models/home/post.dart';
import 'package:voip_chat/models/user/address.dart';

class UserModel {
  final String username;
  final String name;
  final String uid;
  final String phoneNumber;
  final Address? address;
  final String photoUrl;
  final String? email;
  final List<dynamic> followers; // uid of followers
  final List<dynamic> following; // uid of following
  final List<dynamic> posts;
  final bool isOnline;
  final List<dynamic> groupId;

  UserModel({
    required this.username,
    required this.name,
    required this.uid,
    required this.phoneNumber,
    this.address,
    required this.photoUrl,
    this.email,
    required this.followers,
    required this.following,
    required this.posts,
    required this.isOnline,
    required this.groupId,
  });

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'name': name,
      'uid': uid,
      'phoneNumber': phoneNumber,
      'address': address,
      'photoUrl': photoUrl,
      'email': email,
      'followers': followers,
      'following': following,
      'posts': posts,
      'isOnline': isOnline,
      'groupId': groupId,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      username: map['username'],
      name: map['name'],
      uid: map['uid'],
      phoneNumber: map['phoneNumber'],
      photoUrl: map['photoUrl'],
      followers: map['followers'],
      following: map['following'],
      posts: map['posts'],
      isOnline: map['isOnline'],
      groupId: map['groupId'],
    );
  }
}
