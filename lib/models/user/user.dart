import 'package:voip_chat/models/home/post.dart';
import 'package:voip_chat/models/user/address.dart';

class User {
  final String username;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final Address? address;
  final String? photoUrl;
  final String? email;
  final List<User> followers;
  final List<User> following;
  final List<Post> posts;

  User({
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    this.address,
    this.photoUrl,
    this.email,
    required this.followers,
    required this.following,
    required this.posts,
  });
}
